

import 'package:flutter/material.dart';
import 'package:project_june1/storages%20in%20flutter/shared%20preferences/sqflite%20operation/sqflite%20crud/sqfliteoperations.dart';



class SqfliteHome extends StatefulWidget {
  const SqfliteHome({super.key});

  @override
  State<SqfliteHome> createState() => _SqfliteHomeState();
}

class _SqfliteHomeState extends State<SqfliteHome> {
  var isLoading = true;
  List<Map<String, dynamic>> contacts = [];
  @override
  void initState() {
    loadUi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("MyContacts"),
        ),
        body: isLoading
            ? Center(
          child: CircularProgressIndicator(),
        )
            : ListView.builder(
            itemCount: contacts.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(contacts[index]['cname']),
                  subtitle: Text(contacts[index]['cnumber']),
                  trailing: Wrap(
                    children: [
                      IconButton(onPressed: (){
                        showSheet(contacts[index]['id']);
                      }, icon: Icon(
                        Icons.edit,color: Colors.blue,)),
                      IconButton(onPressed: (){

                      }, icon: Icon(
                        Icons.delete,color: Colors.blue,)),
                    ],
                  ),
                ),
              );
            }),
        floatingActionButton: FloatingActionButton(
          // creating a new data so the id will be null
          onPressed: () => showSheet(null),
          child: const Icon(Icons.add),
        ));
  }

  final name_Controller = TextEditingController();
  final phone_Controller = TextEditingController();

  void showSheet(int? id) async {
    if(id !=null){
      final existingcontact=contacts.firstWhere((element) => element['id'] ==id);
      name_Controller.text=existingcontact['cname'];
      phone_Controller.text=existingcontact['cnumber'];
    }
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return Container(
            padding: EdgeInsets.only(
                left: 15,
                right: 25,
                top: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom + 120),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: name_Controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Name",
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: phone_Controller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "phoneNo"),
                ),
                SizedBox(height: 10,),
                ElevatedButton(
                    onPressed: () async{
                      if(id == null){
                        await createContact();
                      }
                      if(id != null){
                        await updateContact(id);
                      }
                      name_Controller.text="";
                      phone_Controller.text="";
                      Navigator.pop(context);
                    },
                    child: Text(
                        id == null ? "Create Contacts" : "update Contacts"))
              ],
            ),
          );
        });
  }

  Future<void> createContact() async{
    await SQLHelper.create_contact(name_Controller.text,phone_Controller.text);
    loadUi();

  }

  void loadUi() async {
    final data =await SQLHelper.readContact();
    setState(() {
      contacts =data;
      isLoading=false;
    });

  }
Future<void>updateContact(int id)async{
    await SQLHelper.updateContact(id, name_Controller.text, phone_Controller.text);
    loadUi();
}
  Future<void>deleteContact(int id)async{
    await SQLHelper.deleteContact(id);
    loadUi();
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("successfull")));
  }
}
void main(){
  runApp(MaterialApp(home:SqfliteHome(),));
}
