import 'package:flutter/material.dart';

void main(){
  //runapp attach eidget tree to the UI
  runApp(MaterialApp(
      home:MYsplashpage()
  ));
}
class MYsplashpage extends StatelessWidget{
  //this page does not any changes

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("my splash page"
          ""),),
    );

  }
}