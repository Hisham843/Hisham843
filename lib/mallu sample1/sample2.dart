
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: app(),));
}
class app extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        
        child: Container(
          width:MediaQuery.of(context).size.width *.6,
            height: 400,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(40),
        decoration: BoxDecoration(
            color: Colors.green,
            border: Border.all(
              color: Colors.black,
              width: 4,
            ),
          borderRadius: BorderRadius.circular(10),
        boxShadow:[BoxShadow(color: Colors.grey,spreadRadius: 10,blurRadius: 10)]),
        child: Center(
        child: Text("HISHAM PAGE"),
        )
        ),),
    );

  }
}
