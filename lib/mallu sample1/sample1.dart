
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: sample1(),));
}
class sample1 extends StatelessWidget {

      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
              title:Text("hisham") ),
              body: Center(
                child: Container(
                  width: 500,height: 500,
                 margin: EdgeInsets.all(100),
                 padding: EdgeInsets.all(30),
                 // color: Colors.red,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      width: 6,
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(
                      child: Text("hisham")),
          ),
              ),

        );
      }
    }

