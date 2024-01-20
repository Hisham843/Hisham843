import 'dart:async';

import 'package:flutter/material.dart.';
import 'package:project_june1/practice/Statefull%20login%20with%20validator.dart';

import '../../mediaquery/home.dart';
import 'p5LoginPage.dart';

void main(){
  runApp(MaterialApp(home: Splash3(),));
}
class Splash3 extends StatefulWidget {
  const Splash3({super.key});

  @override
  State<Splash3> createState() => _Splash3State();
}

class _Splash3State extends State<Splash3> {
  
  @override
  void initState() {
    Timer(Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context)=>LoginPage()));
    });
    
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Image.asset("assets/images/natur.jpg"),
      )
    );
  }
}
