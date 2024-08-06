import 'package:flutter/material.dart';

class register extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign up"),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.fromLTRB(50, 40, 50, 20),
            child:   Image(
              image: AssetImage("images/register.png"),
              width: 80,
              height: 80,
            ),

          ),

          Padding(padding: EdgeInsets.fromLTRB(50, 10, 50, 20),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "First Name",
                  prefixIcon: Icon(Icons.account_circle)
              ), // obscureText: true,
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(50, 10, 50, 20),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Last Name",
                  prefixIcon: Icon(Icons.account_circle)
              ),
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(50, 10, 50, 20),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Mobile",
                  prefixIcon: Icon(Icons.call)
              ),
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(50, 10, 50, 20),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email_outlined)
              ),
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(50, 10, 50, 20),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                  prefixIcon: Icon(Icons.vpn_key)
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(10),
            child: FlatButton(
              child: Text('Sign up'),
              textColor: Colors.white,
              color: Colors.blue,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                    register()
                ));
              },
            ),
          )

        ],
      ),
    );
  }

}