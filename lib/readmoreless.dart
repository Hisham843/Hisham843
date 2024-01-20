
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

void main(){
  runApp(MaterialApp(home: Readmore(),));
}
class Readmore extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Read more Read Less '),
      ),
      body: Column(
        children: [
          ReadMoreText("Flutter is an open source framework developed and supported by Google. Frontend and full-stack developers use Flutter to build an application’s user interface (UI) for multiple platforms with a single codebase.",
          trimLines:2,
          preDataText:"AMANDA",
        preDataTextStyle: TextStyle(fontWeight: FontWeight.w900),
        style: TextStyle(color: Colors.deepPurple),
        colorClickableText: Colors.red,
        trimMode: TrimMode.Line,
          ),
        ]

      ),
    );
  }
}
