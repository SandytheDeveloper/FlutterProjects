import 'package:flutter/material.dart';

void main(){
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget{
  // @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.lightGreenAccent
      ),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatefulWidget{
  @override
  // State<StatefulWidget> createState() {
  //   // TODO: implement createState
  //   throw UnimplementedError();
  // }
  LoginPage_ createState() => LoginPage_();

}

class LoginPage_ extends State<LoginPage>{

  String name="";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Email",
              prefixIcon: Icon(Icons.person)
            ),
            onChanged:(Text){
              setState(() {
                name = Text;
              });
            }
          ),
          ),
          Text("You Entered text is "+name),
        ],
      ),
    );

  }

}