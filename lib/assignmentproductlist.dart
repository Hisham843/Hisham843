import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Product_list(),));
}
class Product_list extends StatelessWidget {
  var name=["Name:Apple","Name:Mango","Name:Banana","Name:Grapes","Name:Orange","Name:Kiwi","Name:Watermelon",];
  var image=["assets/images/apple.png","assets/images/mango.png","assets/images/banana.png","assets/images/grape.png","assets/images/orange.png",
  "assets/images/kiwi.png","assets/images/watermelon.png"];
 // var unit=["kg:1","kg:1","kg:1","kg:1","kg:1","kg:1","kg:1"];
  var price=["price:250","price:120","price:40","price:150","price:180","price:280","price:25"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product list"),
        centerTitle: true,


        actions: [
          Icon(Icons.shopping_cart),SizedBox(width: 30,)
        ],
      ),
      body: ListView(children: List.generate(7, (index) => Card(
        child: ListTile(title:Text(name[index]),
          subtitle: Text(price[index]),
          leading: CircleAvatar(backgroundImage: AssetImage(image[index]),),

          trailing: Wrap(
            direction: Axis.vertical,
            children: [Icon(Icons.shopping_cart)],
          ),

        )
      )),



      ),
    );

  }
}
