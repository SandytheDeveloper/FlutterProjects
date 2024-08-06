import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'GlobalVariable.dart';
import 'main.dart';

class theme extends StatefulWidget{
  _theme createState() => _theme();
}

class _theme extends State<theme>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Theme'),
        centerTitle: true,
        backgroundColor: owncolor,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.fromLTRB(40, 50, 40, 25),
              child: Text('Choose Your Theme Color',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
            ),
            Padding(padding: EdgeInsets.all(20),
              child: RaisedButton(
                color: Colors.red,
                child: Text('RED'),
                onPressed: (){
                  owncolor = Colors.red;
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)
                  =>HomePage()));
                  setState(() {
                  });
                },
              ),
            ),
            Padding(padding: EdgeInsets.all(20),
              child: RaisedButton(
                color: Colors.orange,
                child: Text('Orange'),
                onPressed: (){
                  owncolor = Colors.orange;
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)
                  =>HomePage()));
                  setState(() {
                  });
                },
              ),
            ),
            Padding(padding: EdgeInsets.all(20),
              child: RaisedButton(
                color: Colors.blue,
                child: Text('Blue'),
                onPressed: (){
                  owncolor = Colors.blue;
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)
                  =>HomePage()));
                  setState(() {
                  });
                },
              ),
            ),
            Padding(padding: EdgeInsets.all(20),
              child: RaisedButton(
                color: Colors.yellow,
                child: Text('Yellow'),
                onPressed: (){
                  owncolor = Colors.yellow;
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)
                  =>HomePage()));
                  setState(() {
                  });
                },
              ),
            ),
            Padding(padding: EdgeInsets.all(20),
              child: RaisedButton(
                color: Colors.pink,
                child: Text('Pink'),
                onPressed: (){
                  owncolor = Colors.pink;
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)
                  =>HomePage()));
                  setState(() {
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


