import 'dart:io';

import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: AlertDailogDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AlertDailogDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AlertDemo"),
      ),
      body: Center(
        child: FlatButton(
          color: Colors.amber,
          onPressed: (){
            showAlertDailog(context);
          },
          child: Text("click here for dailog",style: TextStyle(fontSize: 25),),
        ),
      ),
    );
  }
}

showAlertDailog(BuildContext context){

  Widget yesButton = FlatButton(onPressed: (){exit(0);}, child: Text('Yes'));
  Widget noButton = FlatButton(onPressed: (){Navigator.of(context).pop(context);}, child: Text('No'));

  AlertDialog alert = AlertDialog(
    title: Text("Alert Dailog Demo"),
    content: Text("This is the Example of AlertDialog"),
    actions: [yesButton,noButton],
  );

  showDialog(context: context,builder : (BuildContext context){
    return alert;
  });

}