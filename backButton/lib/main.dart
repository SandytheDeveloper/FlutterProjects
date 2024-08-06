import 'package:flutter/material.dart';

String gt;


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Back Button'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: FlatButton(
          child: Text('Press me'),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>
                secondpage()
            ));
          },
        ),
      ),

    );
  }
}

class secondpage extends StatelessWidget{

  String txt='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('SecondPage'),
        automaticallyImplyLeading: false,
      ),

      body: Column(
        children: [
          Text(gt),

          FlatButton(
            child: Text('BACK'),
            onPressed: (){
              Navigator.pop(context);
            },
          ),

        ],
      ),
    );
  }
}