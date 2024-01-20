import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(MaterialApp(home: LotAnim(),));
}
class LotAnim extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lottie"),),
      body:Padding(
        padding: const EdgeInsets.all(28.0),
        child: ListView(
          children: [
            SizedBox(width: 30,height: 30,),
            Lottie.asset("assets/animation/animation1.json"),
            Lottie.network("https://lottie.host/b6b0f85d-ee4a-46b2-ad0b-eb3689242ea5/FVLcyfNm2Z.json"),
            Lottie.network("https://lottie.host/73cd39b7-b65a-4979-969d-1f63431c3806/cGiHahzOg5.json")
        ],
        ),
      ),

    );
  }
}
