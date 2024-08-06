import 'package:flutter/material.dart';     //For Android
import 'package:flutter/cupertino.dart';    //For IOS

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      home: NavigationDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class NavigationDemo extends StatefulWidget{
  _NavigationDemo createState() => _NavigationDemo();
}

class _NavigationDemo extends State<NavigationDemo>{

  int _selectedposition = 0;

  static const List<Widget> _list = <Widget>[
    Text("Home Screen",style: TextStyle(color: Colors.green),),
    Text("Second Screen",style: TextStyle(color: Colors.blue),),
    Text("Third Screen",style: TextStyle(color: Colors.yellow),),
    Text("Fourth Screen",style: TextStyle(color: Colors.indigo),),
    Text("Fifth Screen",style: TextStyle(color: Colors.amber),),
  ];

  void _OnTap(int index)
  {
    setState(() {
      _selectedposition = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Demo'),
      ),
      body: Center(
        child: _list.elementAt(_selectedposition)
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: 'Home',activeIcon: Icon(Icons.home_rounded),backgroundColor: Colors.green),
          BottomNavigationBarItem(icon: Icon(Icons.call_end_outlined),label: 'Call',activeIcon: Icon(Icons.call_end_rounded),backgroundColor: Colors.blue),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined),label: 'Product',activeIcon: Icon(Icons.shopping_cart_rounded),backgroundColor: Colors.yellow),
          BottomNavigationBarItem(icon: Icon(Icons.local_offer_outlined),label: 'Offers',activeIcon: Icon(Icons.local_offer_rounded),backgroundColor: Colors.indigo),
          BottomNavigationBarItem(icon: Icon(Icons.settings_applications_outlined),label: 'Settings',activeIcon: Icon(Icons.settings),backgroundColor: Colors.amber),
        ],
        currentIndex: _selectedposition,
        onTap: _OnTap,
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: Colors.black,
      ),
    );
  }
}