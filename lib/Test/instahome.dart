import 'package:flutter/material.dart';

class InstagramHome extends StatefulWidget {
  const InstagramHome({super.key});

  @override
  State<InstagramHome> createState() => _InstagramHomeState();
}

class _InstagramHomeState extends State<InstagramHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(child: Text("Welcome to instagram",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
          Image.asset("assets/images/intsa.png",width: 200,height: 200,)
        ],
      ),
    );
  }
}
