import 'package:flutter/material.dart';
import 'package:pass_data/secondpage.dart';

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
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController name = new TextEditingController();
  TextEditingController last = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10, 40, 10, 20),
              child: TextField(
                controller: name,
                decoration: InputDecoration(
                    labelText: "First Name", prefixIcon: Icon(Icons.person)),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 40, 10, 20),
              child: TextField(
                controller: last,
                decoration: InputDecoration(
                    labelText: "Last Name", prefixIcon: Icon(Icons.person)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => secondpage(name: name.text,last: last.text,)));
                },
                child: Text("GO TO NEXT PAGE"))
          ],
        ),
      ),
    );
  }
}
