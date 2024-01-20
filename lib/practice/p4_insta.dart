import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Instaa(),));
}

class Instaa extends StatelessWidget {
  const Instaa({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        decoration: BoxDecoration(
          color: Colors.black
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/intsa.png",height: 200,
              width: 200,),
              Text("Instagram",style: TextStyle(
                fontSize: 20,fontWeight:FontWeight.bold,
                color: Colors.black
              ),)
            ],

    ),
        ),
      ) ,
    );
  }
}