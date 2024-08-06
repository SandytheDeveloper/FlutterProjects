import 'package:flutter/material.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
          children: [

            ListTile(
              title: Text("Rahul"),
              subtitle: Text('Friend'),
              // leading: Icon(Icons.home),
              leading: Image(
                image: AssetImage("images/items/icon1.png"),
              ),

              onTap: (){
                // subtitle: Text("Good Morning",style: TextStyle(color: Colors.grey));
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                    home()
                ));

              },
            ),
            ListTile(
              title: Text("hello 2"),
            ),
            ListTile(
              title: Text("hello 3"),
            ),
            ListTile(
              title: Text("hello 4"),
            ),
            ListTile(
              title: Text("hello 5"),
            ),
            ListTile(
              title: Text("hello 6"),
            ),
            ListTile(
              title: Text("hello 7"),
            ),
            ListTile(
              title: Text("hello 8"),
            ),
            ListTile(
              title: Text("hello 9"),
            ),
            ListTile(
              title: Text("hello 10"),
            ),
            ListTile(
              title: Text("hello 11"),
            ),


          ]

      ),


    );
  }
}