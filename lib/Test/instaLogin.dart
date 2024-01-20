import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

import 'instahome.dart';
import 'instaregister.dart';

class InstagramLogin extends StatefulWidget {
  const InstagramLogin({super.key});

  @override
  State<InstagramLogin> createState() => _InstagramLoginState();
}

class _InstagramLoginState extends State<InstagramLogin> {
  var formkey = GlobalKey<FormState>();
  bool passwordvisibility = true;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        title: Text("Instagram",style: GoogleFonts.dancingScript(
        fontSize: 30,fontWeight: FontWeight.bold,color: Colors.red,),
      ),),
      body: Form(
        key: formkey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/intsa.png",
                height: 200,
                width: 200,
              ),
              Center(
                child: Text(
                  "Instagram Login",
                  style:GoogleFonts.dancingScript(
                    fontSize: 30,fontWeight: FontWeight.bold,color: Colors.red,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Username",
                    labelText: "Username",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  validator: (uname) {
                    if (uname!.isEmpty || !uname.contains("H")) {
                      return "Field are empty or valid";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  obscuringCharacter: "*",
                  obscureText: passwordvisibility,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (passwordvisibility == true) {
                              passwordvisibility = false;
                            } else {
                              passwordvisibility = true;
                            }
                          });
                        },
                        icon: Icon(passwordvisibility == true
                            ? Icons.visibility_off_sharp
                            : Icons.visibility)),
                    hintText: "password",
                    labelText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  validator: (pass) {
                    if (pass!.isEmpty || pass.length < 6) {
                      return "field are emty or password length must be >=6";
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
                          builder: (context) => InstagramHome()));
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
                  child: Text("Login")),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => InstagramRegister()));
                  },
                  child: Text("Not a user?? Register Here !!!"))
            ],
          ),
        ),
      ),
    );
  }
}
