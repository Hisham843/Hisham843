import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gridview2(),));
}
class Gridview2 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView Builder"),
      ),
     body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),itemCount: 10, itemBuilder:( context,index){
       return Card(
       child: Center(
       child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("item"),
      Icon(Icons.ac_unit)
    ],
    ),
       ),
       );
    }),
    );
  }
}
