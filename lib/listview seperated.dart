import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: ListView_seperated(),));
}
class ListView_seperated extends StatelessWidget{
  var name=["january","february","march","april","may","june","july","augest","September","Actober","navumber","December"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView seperated"),
      ),
      body: ListView.separated(itemBuilder: (context,index){
        return Card(
          child: ListTile(
            title: Text(name[index]),
          ),
        );
      },
          separatorBuilder: (context,index){
        if (index % 4 ==0){
          return Card(
            color: Colors.red,
            child: Text("Advertaisment"),
          );
        }else{
          return SizedBox();
        }
          }, itemCount: 30),

      );


  }
}