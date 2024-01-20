import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Splash3(),));
}
class Splash3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///back grd set cheyyanulla 1 vayi
      // backgroundColor: Colors.grey,
      body: Container(
        ///back ground set 2 cheyyal 2 vazi
        decoration:const BoxDecoration(
            // gradient:LinearGradient(
            //     begin: Alignment.bottomLeft,
            //     end: Alignment.topRight,
            //     colors: [Colors.yellow, Colors.white, Colors.purple])

          ///back grd set 3 vazi

          image: DecorationImage(image: AssetImage("assets/images/natur.jpg"))


        ) ,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Icon(Icons.h_mobiledata,
              //   size: 70,
              //   color: Colors.green,),
              Image.asset(
                "assets/icon/his.png",
                height: 120,
                width: 120,
              ),
              const Text(
                "My Application",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    color: Colors.white60),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
