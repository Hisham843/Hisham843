import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Gridcustom(),));


}
class Gridcustom extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Gridview.custom"),
      ),
      body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,),
          childrenDelegate: SliverChildListDelegate(
              List.generate(12, (index) => Padding(
              padding: EdgeInsets.all(18.0),

            child: Card(
              child: Center(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                     Container(
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                      image: AssetImage("assets/images/burger.jpg"))),
                  ),
                  Text("item.1",style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold),),
                  Text("\$ 280",style: TextStyle(fontSize: 15)),
                ],
              ),
          ),
            )))),
      ),);
  }
}
