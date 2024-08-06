import 'package:crown_task/GlobalVariable.dart';
import 'package:crown_task/order.dart';
import 'package:crown_task/profile.dart';
import 'package:crown_task/setting.dart';
import 'package:crown_task/theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CROWN APPLICATION',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Crown Application"),
        backgroundColor: owncolor,
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              color: thirdcolor,
              margin: EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)
                  =>Profile()));
                },
                splashColor: seccolor,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.person,
                        size: 70,
                      ),
                      Text(
                        "Profile",
                        style: new TextStyle(fontSize: 17.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: thirdcolor,
              margin: EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)
                  =>order()));
                },
                splashColor: seccolor,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.shopping_cart,
                        size: 70,
                      ),
                      Text(
                        "Orders",
                        style: new TextStyle(fontSize: 17.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
              Card(
                color: thirdcolor,
              margin: EdgeInsets.all(10.0),
                child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)
                  =>theme()));
                },
                splashColor: seccolor,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                      Icon(
                        Icons.color_lens,
                        size: 70,
                      ),
                      Text(
                        "Change Theme",
                        style: new TextStyle(fontSize: 17.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
              Card(
                color: thirdcolor,
              margin: EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)
                  =>notification()));
                },
                splashColor: seccolor,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.local_offer,
                        size: 70,
                      ),
                      Text(
                        "Offers",
                        style: new TextStyle(fontSize: 17.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Sandeep Vishwakarma'),
              accountEmail: Text('sandeepvishwakarma431@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: seccolor,
                child: Text('S',style: TextStyle(color: Colors.black,fontSize: 15),
                ),
              ),
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                    HomePage()
                ));
              },
            ),
            Divider(color: Colors.grey,thickness: 0.1,height: 4,),
            ListTile(
              title: Text('Profile'),
              leading: Icon(Icons.person),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                    Profile()
                ));
              },
            ),
            Divider(color: Colors.grey,thickness: 0.1,height: 4,),
            ListTile(
              title: Text('Order'),
              leading: Icon(Icons.shopping_cart),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)
                =>order()));
              },
            ),
            Divider(color: Colors.grey,thickness: 0.1,height: 4,),
            ListTile(
              title: Text('Setting'),
              leading: Icon(Icons.settings),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)
                =>setting()));
              },
            ),
            Divider(color: Colors.grey,thickness: 0.1,height: 4,),
            ListTile(
              title: Text('Contact Us'),
              leading: Icon(Icons.call),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)
                =>contact()));
              },
            ),
            Divider(color: Colors.grey,thickness: 0.1,height: 4,),
            ListTile(
              title: Text('logout'),
              leading: Icon(Icons.logout),
              onTap: (){},
            ),
            Divider(color: Colors.grey,thickness: 0.1,height: 4,),

          ],
        ),
      ),
    );
  }
}

//===================================Contact Us===========================

class contact extends StatefulWidget{
  _contact createState() => _contact();
}

class _contact extends State<contact>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
        centerTitle: true,
        backgroundColor: owncolor,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.fromLTRB(40, 40, 40, 20),
              child: Text("Don't hesitate to contact us if you have any questions."
                  ,style :TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
            ),
            Padding(padding: EdgeInsets.fromLTRB(40, 10, 40, 20),
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(text: 'Via Phone Number: ',style :TextStyle(fontSize: 16)),
                    TextSpan(
                        text: '123456789',
                        style: TextStyle(color: Colors. blue,fontSize: 16),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print('Tap on Number');
                          }),
                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.fromLTRB(40, 10, 40, 20),
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(text: 'Via this Link: ',style :TextStyle(fontSize: 16)),
                    TextSpan(
                        text: 'https://flutter.dev',
                        style: TextStyle(color: Colors. blue,fontSize: 16),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print('Tap on Link');
                          }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}