import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'p5.3Homepage.dart';

class LoginPage extends StatelessWidget {
  String uname = "admin";
  String pwd = "1234";

  TextEditingController usercontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login page"),
      ),
      body: Container(
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage("assets/images/his2.jpg"))),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icon/his.png",
                height: 150,
                width: 150,
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: TextField(
                  controller: usercontroller,
                  decoration: InputDecoration(
                    
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                      ),
                      prefixIcon: Icon(Icons.people),
                      hintText: "UserName",
                      helperText: "User name must be an email",
                      labelText: "UserName"),
                  
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                    controller: passcontroller,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                        ),
                        prefixIcon: Icon(Icons.password),
                        hintText: "Password",
                        helperText: "User name must be an Password",
                        labelText: "Password")),
              ),
              ElevatedButton(

                  onPressed: () {
                    if (uname == usercontroller.text &&
                        pwd == passcontroller.text) {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => HomePage1()));
                      usercontroller.text = "";
                      passcontroller.text = "";
                    } else {
                      // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      //     content: Text("Invalid Username or Password"),
                      // backgroundColor: Colors.red,));

                      Fluttertoast.showToast(
                          msg: "This is Center Short Toast",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.TOP,
                          //timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0
                      );
                    }
                  },
                  child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
