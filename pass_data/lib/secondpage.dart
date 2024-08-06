import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class secondpage extends StatelessWidget {

  String name,last;

  secondpage({ this.name, this.last});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(50),
              child: Text('Name : $name $last'),
            ),
          ],
        ),
      ),
    );
  }


}
