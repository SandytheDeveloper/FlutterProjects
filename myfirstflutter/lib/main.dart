import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'My First App',
      home: second(),
    );
  }

}

class second extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('My Second Page'),
       leading: IconButton(
         icon: Icon(Icons.home),
         onPressed: () {},
       ),
     ),
   );
  }
}