import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: ListView_custom(),));
}
class ListView_custom extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView custom"),
      ),
      body: ListView.custom(childrenDelegate:SliverChildListDelegate(
        //[]
        //or
        List.generate(10,
                (index) => Card(
                    child: Text("Hello"))))));
    //or body:ListView.custom(
    // childerdelrgate:
    // SliverChildBuildDeligate((context,index) => Text("data),childCount:10)),
  }
}
