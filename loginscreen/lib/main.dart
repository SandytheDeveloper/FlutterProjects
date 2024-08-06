import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login Page",
      theme: ThemeData(
        primarySwatch:Colors.blue

      ),
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}

class homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: Column(
        children: [
      Padding(padding: EdgeInsets.fromLTRB(50, 40, 50, 20),
          child:   Image(
            image: AssetImage("images/cancel.png"),
            width: 100,
            height: 100,
          ),

      ),

          Padding(padding: EdgeInsets.fromLTRB(50, 40, 50, 20),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "User ID",
                  prefixIcon: Icon(Icons.account_circle)
              ), // obscureText: true,
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
           child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Password",
              prefixIcon: Icon(Icons.vpn_key)
            ),
          ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
           child: FlatButton(
            child: Text("Login"),
             textColor: Colors.white,
             color: Colors.blue,
             onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
              homepage()
              ));

             },
            ),
          ),
        ],
      ),
    );
  }

}