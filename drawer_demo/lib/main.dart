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
      home: DrawerDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DrawerDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Menu'),
      ),
      body: Center(
        child: Text('This Menu'),
      ),
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('Sandeep VIshwakarma'),
                accountEmail: Text('sandeepvishwakarma431@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.deepOrange,
                  child: Text("M",style: TextStyle(color: Colors.black,fontSize: 15),
                  ),
                ),
              ),
              ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
                onTap: (){},
              ),
              Divider(color: Colors.black,thickness: 0.1,height: 4),
              ListTile(
                title: Text('Profile'),
                leading: Icon(Icons.person),
                onTap: (){},
              ),
              Divider(color: Colors.black,thickness: 0.1,height: 4),
              ListTile(
                title: Text('Product'),
                leading: Icon(Icons.work_rounded),
                onTap: (){},
              ),
              Divider(color: Colors.black,thickness: 0.1,height: 4),
              ListTile(
                title: Text('Setting'),
                leading: Icon(Icons.settings),
                onTap: (){},
              ),
              Divider(color: Colors.black,thickness: 0.1,height: 4),
              ListTile(
                title: Text('Contact us'),
                leading: Icon(Icons.call),
                onTap: (){},
              ),
              Divider(color: Colors.black,thickness: 0.1,height: 4),
              ListTile(
                title: Text('Logout'),
                leading: Icon(Icons.logout),
                onTap: (){},
              ),


            ],
          ),
        ),
    );
  }
}