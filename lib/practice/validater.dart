import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Statefull login with validator.dart';

void main(){
  runApp(MaterialApp(home: Validator1(),));
}

class Validator1 extends StatefulWidget {
  const Validator1({super.key});

  @override
  State<Validator1> createState() => _Validator1State();
}

class _Validator1State extends State<Validator1> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage2()));
    });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/images/trip.jpg"),
      ),
    );
  }
}
