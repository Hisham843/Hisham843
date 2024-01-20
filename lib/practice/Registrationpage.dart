import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'Statefull login with validator.dart';

class singup extends StatefulWidget {
  const singup({super.key});

  @override
  State<singup> createState() => _singupState();
}

class _singupState extends State<singup> {
  var formkey = GlobalKey<FormState>();
  bool passvisiblility1 = true;
  bool passvisiblility2 = true;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Registration page"),
      ),
      body: Form(
        key: formkey,
        child: Center(
          child: Column(
            children: [
              Image.asset(
                "assets/images/contact.png",
                width: 100,
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Name",
                      helperText: "Enter your Name",
                      labelText: "Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  validator: (Name) {
                    if (Name!.isEmpty || !Name.contains("@")) {
                      return "Feid are empty or valid";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Phone Number",
                      helperText: "Enter your phone number",
                      labelText: "Phone",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                  validator: (phone) {
                    if (phone!.isEmpty || phone.length < 10) {
                      return "field are epmty or password length must be >=10";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(6.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "User Name",
                      helperText: "Enter your User Name",
                      labelText: "User Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                  validator: (User) {
                    if (User!.isEmpty || !User.contains("@")) {
                      return "field are empty or valid";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(6.0),
                child: TextFormField(
                  obscuringCharacter: "*",
                  obscureText: passvisiblility1,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (passvisiblility1 == true) {
                                passvisiblility1 = false;
                              } else {
                                passvisiblility1 = true;
                              }
                            });
                          },
                          icon: Icon(passvisiblility1 == true
                              ? Icons.visibility_off_sharp
                              : Icons.visibility)),
                      hintText: "Password",
                      helperText: "Enter your password",
                      labelText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                  validator: (pass) {
                    password = pass;
                    if (pass!.isEmpty || pass.length<6) {
                      return "field are empty or password length must be >=6";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: TextFormField(
                  obscuringCharacter: "*",
                  obscureText: passvisiblility2,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if(passvisiblility2 == true){
                                passvisiblility2 =false;

                              }else{
                                passvisiblility2 =true;
                              }
                            });
                          },
                          icon: Icon(passvisiblility2 == true
                              ? Icons.visibility_off_sharp
                              : Icons.visibility)),
                      hintText: "comfirm password",
                      helperText: "Enter your password",
                      labelText: "comfirm password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                  validator: (comfirm) {
                    if (comfirm!.isEmpty || comfirm !=password) {
                      return "field are empty or password length must be >=6";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    final valid = formkey.currentState!.validate();
                    if (valid) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LoginPage2()));
                    } else {
                      Fluttertoast.showToast(
                          msg: "This is Center Short Toast",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.TOP,
                          //timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0);
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
