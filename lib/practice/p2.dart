import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Splash2(),
  ));
}

class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(Icons.h_mobiledata,
            //   size: 70,
            //   color: Colors.green,),
            Image.asset(
              "assets/icon/his.png",
              height: 200,
              width: 200,
            ),
            const Text(
              "My Application",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
          ],
        ),
      ),
    );
  }
}
