import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'p6home.dart';

void main() {
 runApp(const MaterialApp(
   debugShowCheckedModeBanner: false,
   home: Listview1(),
 ));
}

class Listview1 extends StatelessWidget {
  const Listview1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List view"),
      ),
      body: ListView(
        children: [
          Center(
              child: Text(
            "Select your Food!!",
            style: GoogleFonts.dancingScript(
              fontSize: 30,fontWeight: FontWeight.bold,color: Colors.red
             ),
          )),
          Card(
            child: ListTile(
              title: const Text(" Hamburger"),
              subtitle: const Text("\$190"),
              trailing: const Icon(Icons.shopping_cart),
              leading: Image.asset("assets/images/burger.jpg"),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text(" pizza"),
              subtitle: const Text("\$190"),
              trailing: const Icon(Icons.shopping_cart),
              leading: Image.asset("assets/images/pizza.png"),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text(" grape"),
              subtitle: const Text("\$190"),
              trailing: const Icon(Icons.shopping_cart),
              leading: Image.asset("assets/images/grape.png"),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("Kiwi "),
              subtitle: const Text("\$190"),
              trailing: const Icon(Icons.shopping_cart),
              leading: Image.asset("assets/images/kiwi.png"),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("salad "),
              subtitle: const Text("\$190"),
              trailing: const Icon(Icons.shopping_cart),
              leading: CircleAvatar(backgroundImage:AssetImage("assets/images/salad.jpg")),
            ),
          ),
          ElevatedButton(onPressed: ( ){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Listhome()));
          }, child:Text("submit"))
        ],
      ),
    );
  }
}
