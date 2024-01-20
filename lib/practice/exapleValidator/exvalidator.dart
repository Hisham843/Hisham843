import 'dart:async';

import 'package:flutter/material.dart';

import 'exLoginpage.dart';

void main(){
  runApp(MaterialApp(home: validator(),));
}

class validator extends StatefulWidget {
  const validator({super.key});

  @override
  State<validator> createState() => _validatorState();
}

class _validatorState extends State<validator> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Loginvali()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/images/trip.jpg",),
      ),
    );
  }
}
