import 'package:flutter/material.dart';
import 'package:project_june1/storages%20in%20flutter/shared%20preferences/simple%20login%20using%20shared%20pref/shared-home.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(){
  runApp(MaterialApp(home: LoginShared(),));
}

class LoginShared extends StatefulWidget {
  const LoginShared({super.key});

  @override
  State<LoginShared> createState() => _LoginSharedState();
}

class _LoginSharedState extends State<LoginShared> {
  final email=TextEditingController();
  final pwd  =TextEditingController();
  late SharedPreferences preferences;
  late bool newuser;
  @override
  void initState() {
    check_if_user_already_login();
    super.initState();
  }
  void check_if_user_already_login() async{
    preferences=await SharedPreferences.getInstance();
    newuser=preferences.getBool('userlogin')?? true;

    if(newuser ==false){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>SharedHome()));
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN PAGE"),
      ),
      body: Center(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Email'
                ),
                controller: email,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'passwrod'
                ),
                controller: pwd,
              ),
            ),
            ElevatedButton(onPressed: () async{ preferences
               =await SharedPreferences.getInstance();

              String username =email.text;
              String password =pwd.text;

              if(username !=""&& password!=""){
                preferences.setString('uname',username );
                preferences.setString('pwd', password);
                preferences.setBool('userlogin', false);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SharedHome()));

              }
              email.text="";
              pwd.text="";
            }, child: Text("login"))
          ],
        ),
      ),
    );
  }


}
