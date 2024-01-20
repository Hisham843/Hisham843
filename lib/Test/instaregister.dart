import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

import 'instaLogin.dart';

class InstagramRegister extends StatefulWidget {
  const InstagramRegister({super.key});

  @override
  State<InstagramRegister> createState() => _InstagramRegisterState();
}

class _InstagramRegisterState extends State<InstagramRegister> {
  var formkey = GlobalKey<FormState>();
  bool passvisiblility1 = true;
  bool passvisiblility2 = true;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Instagram",style: GoogleFonts.dancingScript(
          fontSize: 30,fontWeight: FontWeight.bold,color: Colors.red,),
        ),
      ),
      body: Form(
        key: formkey,
        child: Center(
          child: Column(
            children: [
              Image.asset(
                "assets/images/intsa.png",
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
                    if (Name!.isEmpty || !Name.contains("H")) {
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
                      hintText: "User Email",
                      helperText: "Enter your Email",
                      labelText: "User Email",
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
                          builder: (context) => InstagramLogin()));
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
