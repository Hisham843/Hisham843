import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main(){
  runApp(MaterialApp(home: Stag_Grid(),));
}
class Stag_Grid extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Staggered GridView"),
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            StaggeredGridTile.count(
                crossAxisCellCount: 1,//width
                mainAxisCellCount: 4,//hight
                child: Container(
                  color: Colors.green,
                  child: Center(child: Icon(Icons.cabin)),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 3,
                mainAxisCellCount: 1,
                child: Container(
                  color: Colors.yellow,
                  child: Center(child: Icon(Icons.add)),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 3,
                mainAxisCellCount: 3,
                child: Container(
                  color: Colors.red,
                  child: Center(child: Icon(Icons.ac_unit)),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 4,
                mainAxisCellCount: 4,
                child: Container(
                  color: Colors.blue,
                  child: Center(child: Icon(Icons.add)),
                ))
          ],
        ),

      ),
    );
  }
}
