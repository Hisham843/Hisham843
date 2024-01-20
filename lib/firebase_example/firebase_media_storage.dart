import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;


class FireMediaStorage extends StatefulWidget {
  const FireMediaStorage({super.key});

  @override
  State<FireMediaStorage> createState() => _FireMediaStorageState();
}

class _FireMediaStorageState extends State<FireMediaStorage> {
  FirebaseStorage storage = FirebaseStorage.instance;

  get singlefile => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Storage Media"),),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              children: [
                ElevatedButton.icon(onPressed: () => upload('Camera'),
                    icon: Icon(Icons.camera_alt_outlined),
                    label: Text("camera")),
                ElevatedButton.icon(
                    onPressed: () => upload('gallery'), icon: Icon(Icons.photo),
                    label: Text("Gallery"))
              ],
            ),
            Expanded(child: FutureBuilder(future:loadMedia(),
    builder: (context,AsyncSnapshot<List<Map<String,dynamic>>>snapshot){
    if(snapshot.connectionState==ConnectionState.done){
    return ListView.builder(
    itemCount: snapshot.data?.length??0,
    itemBuilder: (context,index){
    final Map<String,dynamic> image =snapshot.data![index];
    return Card(
    child: ListTile(
    leading: Image.network(image['url']),
    title: Text(image['upladedBy']),
    subtitle: Text(image['description']),
    trailing: IconButton(onPressed: ()=> deleteMedia(image['path']),
    icon:Icon(Icons.delete)),
    ),
    );
    });
    }
    return Center(child: CircularProgressIndicator(),);

    }))
          ],
        ),
      ),
    );
  }

  Future<void> upload(String imageSource) async {
    final picker = ImagePicker();
    XFile? pickedImage;

    try {
      pickedImage = await picker.pickImage(source: imageSource == 'camera' ?
      ImageSource.camera : ImageSource.gallery, maxWidth: 1920);
      final String fileName = path.basename(pickedImage!.path);
      File imagefile = File(pickedImage.path);
      try {
        await storage.ref(fileName).putFile(imagefile,
            SettableMetadata(customMetadata: {
              'uploadedBy': "Its Me Xxxx",
              'descripition': "Some Description"
            }));
        setState(() {});
      } on FirebaseException catch (error) {
        print(error);
      }
    } catch (error) {
      print(error);
    }
  }

 Future<List<Map<String,dynamic>>> loadMedia() async {
              List<Map<String,dynamic>> image =[];
              final ListResult result = await storage.ref().list();
              final List<Reference> allfiles = result.items;
              await Future.forEach(allfiles, (single) async{
                final String fileUrl = await singlefile.getDownloadURL();
                final FullMetadata metadata = await singlefile.getMetadata();

                image.add({
      'imageurl':fileUrl,
    'path ':singlefile.fullpath,
    'uploadedBy':metadata.customMetadata?['uploadedBy']?? 'No Data',
    'description':metadata.customMetadata?['description']?? 'No Description'    });
    });
       return image;
    }

 Future<void> deleteMedia(String imagepath)async {
    await storage.ref(imagepath).delete();
    setState(() {});
 }
}

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(home:FireMediaStorage(),));
}
