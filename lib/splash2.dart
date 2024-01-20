import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Splash2()));
}

class Splash2 extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
     /// set background Color way 1,
      //backgroundColor: Colors.black,
      body: Container(
        ///set background color way 2 using gradient inside container
        //decoration: BoxDecoration(
        //    gradient: LinearGradient(
        //      begin: Alignment.bottomLeft,
        //        end: Alignment.topRight,
        //        colors: [
        //  Colors.black,Colors.brown,Colors.white])
        ///set background color way 3 using image
          image:DecorationImage(image: AssetImage("assets/images/his2.jpg"))
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon(
              //   Icons.sailing_outlined,
              //   size: 40,
              //   color: Colors.red,),
              Image.asset("assets/icon/his.png",height: 170,width: 170,),

               const Text(
                "COMPASS",
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.lightGreenAccent,
                    fontWeight:FontWeight.bold,
                  fontStyle: FontStyle.italic
                ),
              ),

            ],
          ),
        ),
      );

  }
}