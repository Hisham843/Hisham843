import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Mainpage(),));
}
class Mainpage extends StatelessWidget {

  final uname =TextEditingController();
  final email =TextEditingController();
  final password=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
              image: AssetImage("assets/images/salad.jpg"))
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Center(
                child: Text("HELLO THERE",
                  style: TextStyle(fontSize: 30,color: Colors.lightGreenAccent),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(controller:uname ,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),hintText: 'username'
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(controller:email,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),hintText: 'Email'
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(controller:password ,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),hintText: 'password'
                ),),
              ),

              ElevatedButton(onPressed: (){},
                  child: Text('Register'))
            ],


        ),
      )
    );
  }
}
