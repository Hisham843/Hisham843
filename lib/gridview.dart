import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gidview1(),));
}
class Gidview1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Text("my Gridview"),
    ),
     body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      children: List.generate(15, (index) => Card(
        color: Colors.yellow,
        child: Center(
          child: Icon(Icons.ac_unit_rounded),
        ),
      ))),

);


  }
}
