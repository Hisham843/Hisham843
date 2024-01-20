import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: ExitAppAlert(),));
}

class ExitAppAlert extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Future<bool> showAlert()async{
      return await showDialog(context: context, builder: (context){
        return AlertDialog(
          title: Text("Ext"),
          content: Text('Do you Really want to Exit'),
          actions: [
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).pop(true);
              },
              child: Text ("yes")),
      ElevatedButton(
      onPressed: (){
        Navigator.of(context).pop(false);
      },
      child: Text("No")),
      ElevatedButton(
      onPressed: (){
        Navigator.of(context).pop(false);
      },
      child: Text("Cancel")),
          ],
        );
      });
    }
    return WillPopScope(
        onWillPop: showAlert,
        child: Scaffold(
          appBar: AppBar(
            title: Text("EXIT FROM APP"),
          ),
    body: Center(child: Text("Press Back Button To Exit!!!"),),

        ));
  }

}
