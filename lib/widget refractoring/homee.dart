
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Refrahome(),));
}
class Refrahome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gridview using Refactoring"),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder:(context,index){
    return MyWidget();
    }),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("assets/images/apple.png",
          height: 200,),
          Text("Apple"),
          Text("\$ 100"),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                  onPressed: (){},
                  icon: Icon(Icons.favorite),
                label: Text("WishList")),
              ElevatedButton.icon(onPressed:(){},
                  icon: Icon(Icons.shopping_cart),
                  label: Text('Buy now'))
            ],
          ),
        ],

      ),
    );
  }
}

