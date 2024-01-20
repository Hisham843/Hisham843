import 'package:flutter/material.dart';
 void main(){
   runApp(MaterialApp(
     debugShowCheckedModeBanner:false,
     home: ListView2(),));
 }
class ListView2 extends StatelessWidget{
   var name=["food1","food2","food3","food4","food5","food6","food7","food8","food9","food10"];
   var image=["assets/images/burger.jpg",
     "assets/images/pizza.png",
     "assets/images/pizza.png","assets/images/pizza.png","assets/images/pizza.png","assets/images/pizza.png",
   "assets/images/pizza.png","assets/images/pizza.png","assets/images/pizza.png","assets/images/pizza.png"];
   var price=[180,250,120,230,134,135,134,167,180,170];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.teal,
          title: Text("ListView 2"),
      actions: [
        Icon(Icons.camera_alt),
        SizedBox(width: 20,),
        Icon(Icons.search),
        SizedBox(width: 10,),
        PopupMenuButton(itemBuilder:(context){
          return[
            PopupMenuItem(child: Text("Settings")),
            PopupMenuItem(child: Text("Profile")),
            PopupMenuItem(child: Text("BroadCast")),
            PopupMenuItem(child: Text("Help")),

          ];
        })
      ],
      ),
      body: ListView(
        children: List.generate(10, (index) => Card(
    child: ListTile(
    title: Text(name[index]),
    subtitle: Text("\$ ${price[index]}"),
    leading: CircleAvatar(
    backgroundImage: AssetImage(image[index]),
    ),
      trailing: Wrap(
        direction: Axis.vertical,
        children: [
          Text("12.30"),
          SizedBox(width: 10),
          CircleAvatar(
            maxRadius: 10,
            minRadius: 4,
            backgroundColor: Colors.green,
            child: Text("2"),)
        ]),
    ),
    )
      ),
    ),
    );
  }
}