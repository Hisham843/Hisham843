import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import '../models/user model.dart';

class Login extends StatelessWidget {
  final email=TextEditingController();
  final pass=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HiveLogin"),
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(10),
          child: TextField(
            controller:email,
            decoration: InputDecoration(hintText:"Username",
            border: OutlineInputBorder()
            ),)
          ),
          Padding(padding: EdgeInsets.all(10),
          child: TextField(
            controller: pass,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "password"),
          ),),
          ElevatedButton(onPressed: (){},
              child: Text("Login")),
          TextButton(onPressed: (){},
              child: Text("Login")),
          TextButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Login()));
          }, child: Text("Not a user?Register here !!!"))
        ],
      ),
    );
  }
}
