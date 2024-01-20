import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:project_june1/GridView3.dart';
import 'package:project_june1/splash2.dart';


void main(){
  runApp(MaterialApp(home: Introscreen(),));
}
class Introscreen extends StatelessWidget {
  PageDecoration pageDecoration=PageDecoration(
    titleTextStyle: TextStyle(
      fontWeight: FontWeight.w900,
      fontSize: 40,color: Colors.purple),
    bodyTextStyle: GoogleFonts.aBeeZee(
      fontStyle: FontStyle.italic,
      fontSize: 20,color:Colors.pinkAccent),
    bo
    )
  )

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
        title: 'First page',
      body: 'Indroduction screen show the details of the app and demo of pages',
      image: IntroImage('https://images.unsplash.com/photo-1691935666013-d159e0952153?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80'),

        ),
        PageViewModel(
          title: 'Second page',
          body: 'Indroduction screen show the details of the app and demo of pages',
          image: IntroImage('https://images.unsplash.com/photo-1691935666013-d159e0952153?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80'),

        ),
        PageViewModel(
          title: 'Third page',
          body: 'Indroduction screen show the details of the app and demo of pages',
          image: IntroImage('https://images.unsplash.com/photo-1691935666013-d159e0952153?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80'),

        )
      ],
      onDone: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Splash2())),
      onSkip: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Gridview3())),
    showSkipButton: true,
      skip: Text('Skip '),
      next: Icon(Icons.arrow_forward_rounded),
      done: Text("Done"),
      dotsDecorator: DotsDecorator(
        size: Size(10,12),
        color: Colors.grey,
        activeSize: Size(25,12),
        activeColor: Colors.yellow,
        activeShape:RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))
        )
      ),
    );
  }

  Widget IntroImage(String image){
    return Container(
      height: 700,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(image)),
        ),
          );
        ),

      );
  }
}
