import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Vr(),));
}
class Vr extends StatelessWidget {
  final uname=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(child: Text("SHANIK",style: TextStyle(fontSize: 40,color: Colors.lightGreenAccent),)),
          TextField(
            controller: uname,
            decoration: InputDecoration(border: OutlineInputBorder(),hintText: 'username'),
          )

        ],
      ),
    );
  }
}
