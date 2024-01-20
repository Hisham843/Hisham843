import 'package:flutter/material.dart';

class SimpleAnimation extends StatefulWidget {
  const SimpleAnimation({super.key});

  @override
  State<SimpleAnimation> createState() => _SimpleAnimationState();
}

class _SimpleAnimationState extends State<SimpleAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
      children: [
        Container(
          margin: EdgeInsets.all(20),
          child: Text("Hello All",
          style: TextStyle(
            fontSize: animation?.value)


          ),),
        )
      ],
      ),
    );
  }
}
