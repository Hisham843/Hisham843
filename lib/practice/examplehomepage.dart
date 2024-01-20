import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Center(
          child: Text("Homepage",
          style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.blue),),
        ),
      ),
      body: Center(
        child: Image.asset("assets/images/burger.jpg",fit: BoxFit.cover,),
        
      ),
    );
  }
}
