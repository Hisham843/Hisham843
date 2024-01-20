

import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gridui(),));
}
class Gridui extends StatelessWidget {
  var image=["https://cdn.shopify.com/s/files/1/2534/3568/products/51E3cr9eIiL_600x600.jpg?v=1513182405",];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SHRINE"),
        actions: [Icon(Icons.menu),
          SizedBox(width: 30,),
          Icon(Icons.settings),
          SizedBox(width: 30,),
          Icon(Icons.search),
        ],
      ),
      body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          childrenDelegate: SliverChildListDelegate(List.generate(15, (index) => Padding(padding: EdgeInsets.all(18.0),
          child: Card(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        fit:BoxFit.fill,
                        image: NetworkImage(image[index]))
                    ),
                  )
                ],
              ),
            ),
          ),)))),
    );
  }
}
