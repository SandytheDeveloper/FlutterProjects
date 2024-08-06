import 'package:flutter/material.dart';
import 'package:logintask/home.dart';
import 'package:logintask/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: home(),
    );
  }
}


class login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.fromLTRB(50, 100, 50, 20),
            child:   Image(
              image: AssetImage("images/login.png"),
              width: 60,
              height: 60,
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
          Padding(padding: EdgeInsets.all(5),
            child: FlatButton(
              child: Text("Forget Password ?"),
              textColor: Colors.black,
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                    login()
                ));

              },
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
            child: FlatButton(
              child: Text("Login"),
              textColor: Colors.white,
              color: Colors.blue,
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                    login()
                ));
              },
            ),
          ),

          Row(
            children: <Widget>[
              const Text('Does not have account? '),
              TextButton(
                child: const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 18),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                      register()
                  ));
                },
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ],
      ),
    );
  }

}