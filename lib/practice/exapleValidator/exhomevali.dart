import 'package:flutter/material.dart';

class Homevali extends StatelessWidget {
  const Homevali({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BURGER",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.red),),
      ),
      body: Center(
        child: Image.asset("assets/images/burger.jpg"),
      ),
    );
  }
}
