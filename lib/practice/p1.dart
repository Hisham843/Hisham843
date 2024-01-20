
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Mysplashpage(),));
}
class Mysplashpage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My splash page"),

      ),

    );
  }
}



