import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: second(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: ListView(
          children: [

            ListTile(
              title: Text("hello 1"),
              leading: Icon(Icons.home),

              onTap: (){
                // subtitle: Text("Good Morning",style: TextStyle(color: Colors.grey));
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                    second()
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


class second extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Ex. ABC",
              labelText: "Enter your Name",
              prefixIcon: Icon(Icons.person),
                  ),
          SizedBox(width: 50),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Ex. ABC",
              labelText: "Enter your Name",
              prefixIcon: Icon(Icons.person)
              )
            ),

        ],
      ),
    );
  }

}