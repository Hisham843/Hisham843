import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: Listview2(),
  ));
}

class Listview2 extends StatelessWidget {

  var name = ["food1", "food1", "food1", "food1", "food1", "food1", "food1"];
  var image = [
    "assets/images/mango.png",
    "assets/images/mango.png",
    "assets/images/mango.png",
    "assets/images/mango.png",
    "assets/images/mango.png",
    "assets/images/mango.png",
    "assets/images/mango.png"
  ];
  var price=[100,100,100,100,100,100,100,];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("LIstView2"),
        actions: [
          Icon(Icons.camera_alt_outlined),
          SizedBox(width: 20),
          Icon(Icons.search),
          SizedBox(width: 20,),
          PopupMenuButton(itemBuilder: (context){
            return [
              PopupMenuItem(child: Text("Settings")),
              PopupMenuItem(child: Text("Profile")),
              PopupMenuItem(child: Text("BroadCast")),
              PopupMenuItem(child: Text("Help"))
            ];
          })

        ],
      ),
      body: ListView(
        children: List.generate(
            7,
                (index) =>
                Card(
                  child: ListTile(
                    title: Text(name[index]),
                    subtitle: Text("${price[index]}"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(image[index]),

                    ),
                  ),
                )),
      ),
    );
  }
}
