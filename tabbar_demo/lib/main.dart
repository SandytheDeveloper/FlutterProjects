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
      home: MainScreen(),
    );
  }
}


class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child: Scaffold(
      appBar: AppBar(
        title: Text("Order list"),
        bottom: TabBar(
          tabs: [
            Tab(icon: Icon(Icons.verified),text: "Pending",),
            Tab(icon: Icon(Icons.chevron_right),text: "Success",),
            Tab(icon: Icon(Icons.cancel_outlined),text: "Cancel",),
          ],
        ),
      ),
      body: TabBarView(
        children: [
          PendingOrder(),
          SuccessOrder(),
          CancelOrder()
        ],
      ),
    ));
  }
}


class PendingOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
          child: Text(
            "Here no any Order is in Pending List",
            style: TextStyle(fontSize: 20.0),
          )
      ),
    );
  }
}

class SuccessOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body: Center(
        child: Text(
          "Here no any Order is in SuccessFull Order List",
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}

class CancelOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body: Center(
        child: Text(
          "Here no any Order is in Cancellation List",
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}