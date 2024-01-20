


import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: chatlist(),));
}
class chatlist extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.green,
        title: Text("shanik"),
        actions: [Icon(Icons.person_outline,)],


      ),
    );
  }
}
