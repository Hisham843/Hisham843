import 'package:flutter/material.dart';

import 'exhomevali.dart';

class Loginvali extends StatelessWidget {
  const Loginvali({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("login page"),
      ),
      body: Form(
        child: Center(
          child: Column(
            children: [
              Image.asset("assets/images/contact.png",width: 150,height: 150  ,),
              Padding(
                padding: const EdgeInsets.all(8.0),
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
                padding: const EdgeInsets.all(8.0),
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
                padding: const EdgeInsets.all(8.0),
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
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Password",
                      helperText: "Enter your password",
                      labelText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                  validator: (pass) {
                    if (pass!.isEmpty || pass.length < 6) {
                      return "field are empty or password length must be >=6";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon:Icon(Icons.visibility_off),
                    hintText: "comfirm password",
                    helperText: "Enter your password",
                    labelText: "comfirm password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),)),
                  validator: (comfirm) {
                    if(comfirm!.isEmpty || comfirm.length<6){

                    }return "";
                  },
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Homevali()));
                  },
                  child: Text("Login")),
              TextButton(onPressed: (){}, child: Text("Not User?? Register Here !!!"))
            ],
          ),
        ),
      ),
    );
  }
}
