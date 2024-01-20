
import 'package:flutter/material.dart';

class HomePage1 extends StatelessWidget {
  const HomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Center(
          child: Text("Home Page",
          style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: Colors.red),
          ),
        ),
      ),
    );
  }
}
