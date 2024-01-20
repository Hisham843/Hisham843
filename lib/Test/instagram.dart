import 'dart:async';

import 'package:flutter/material.dart';

import 'instaLogin.dart';

void main(){
  runApp(MaterialApp(home: Instagram(),));
}

class Instagram extends StatefulWidget {
  const Instagram({super.key});
  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>InstagramLogin()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [

           Image.asset("assets/images/intsa.png",width: 150,height: 150,)
         ],
       ),
     ),
    );
  }
}
