
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project_june1/practice/ExampleLogin.dart';

void main(){
runApp(MaterialApp(home: Example(),));
}

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {

  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => LogPage()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text("WELCOME   TO  ALL",style: TextStyle(
          fontSize: 30,fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
        ),
      ),
    );
  }
}
