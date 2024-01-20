import 'package:flutter/material.dart';

import 'examplehomepage.dart';

class LogPage extends StatelessWidget {
  String user = "hisham";
  String pass = "1234";
  String phone = "123456789";

  TextEditingController usercontroller = TextEditingController();
  TextEditingController passcontrollr = TextEditingController();
  TextEditingController phoncontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Center(child: Text("LOGIN PAGE")),
        ),
        body: Column(
          children: [
          Image.asset(
          "assets/icon/shopping-cart.png",
          height: 200,
          width: 200,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            controller: usercontroller,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.people),
                hintText: "User Name",
                helperText: "Enter User Name",
                labelText: "User Name"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            controller: passcontrollr,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.password),
                hintText: "Password",
                helperText: "Enter Password",
                labelText: "Password"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            controller: phoncontroller,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.numbers),
                hintText: "Phone number",
                helperText: "Enter your number",
                labelText: "Phone number"),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              if (user == usercontroller.text &&
                  pass == passcontrollr.text &&
                  phone == phoncontroller.text) {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => homepage()));
                usercontroller.text = "";
                passcontrollr.text = "";
                phoncontroller.text = "";
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("nvalid user or password"),
                    backgroundColor: Colors.red,));

              }
            },
            child: Text("Submit"))],
    )
    ,
    );
  }
}
