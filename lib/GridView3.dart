import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gridview3(),));
}
class Gridview3 extends StatelessWidget {


  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: GridView.count(crossAxisCount: 3,
      children: List.generate(15, (index) => Card(
        child: Center(
        child: Text("Hello"),
        ),
      )),),
      );

  }
}
