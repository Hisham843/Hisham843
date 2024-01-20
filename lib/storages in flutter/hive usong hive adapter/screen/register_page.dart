import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:project_june1/storages%20in%20flutter/hive%20usong%20hive%20adapter/Database/hivedb.dart';
import 'package:project_june1/storages%20in%20flutter/hive%20usong%20hive%20adapter/screen/login_page.dart';

import '../models/user model.dart';
class Regidtrationhive extends StatelessWidget {
  Regidtrationhive({super.key});

  final usercontroller = TextEditingController();
  final passcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15)),
              hintText: "Enter username",
              filled: true,
              fillColor: Colors.green[200],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15)),
              hintText: "Enter password",
              filled: true,
              fillColor: Colors.green[200],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () async {
              ///fetch al the users from data
              final userlist = await Hivedb.instance.getUser();
              validatesignup(context, userlist);
            },
            child: Text("Register"),
          ),
        ],
      ),
    );
  }

  void validatesignup(BuildContext context, List<User> userlist) async {
    final username = usercontroller.text.trim();
    final password = passcontroller.text.trim();
    bool userfound = false;
    final validateemail = EmailValidator.validate(username);
    if (username != "" && password != "") {
      if (validateemail == true) {
        await Future.forEach(userlist, (singleuser) {
          if (singleuser.Username == username) {
            userfound = true;
          } else {
            userfound = false;
          }
        });
        if (userfound == true) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("Already exist")));
        } else {
          final validatepassword = validatePassword(context, password);
          if (validatepassword == true) {
            final user = User(Username: username, password: password);
            await Hivedb.instance.addUser(user);
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Login() ));
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text("regiter successfull")));
          }
        }
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("enter valid email")));
      }
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("field must be not empty")));
    }
  }

  validatePassword(BuildContext context, String password) {
    if (password.length < 6) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("invalid password")));
      return false;
    } else {
      return true;
    }
  }
}
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  await Hive.openBox<User>('userdata');
  runApp(MaterialApp(
    home: Regidtrationhive(),
  ));}