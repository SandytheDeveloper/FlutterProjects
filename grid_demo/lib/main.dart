import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.indigo),
      home: GridDemo(),
    );
  }
}

class GridDemo extends StatelessWidget {
  // const GridDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid Demo"),
      ),
      body: GridView.count(
        crossAxisCount: 8,
        children: [
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              height: 250,
              width: 250,
              color: Colors.white,
            ),
          ),


        ],
      ),
    );
  }
}


class HorizontalDemo extends StatelessWidget {
  // const HorizontalDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hello"),
        ),
        body: Container(
          height: 250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child:  Image.asset("image/music.jpg",height: 100,width: 100,),
              ),Padding(
                padding: EdgeInsets.all(20),
                child:  Image.asset("image/music.jpg",height: 100,width: 100,),
              ),Padding(
                padding: EdgeInsets.all(20),
                child:  Image.asset("image/music.jpg",height: 100,width: 100,),
              ),Padding(
                padding: EdgeInsets.all(20),
                child:  Image.asset("image/music.jpg",height: 100,width: 100,),
              ),Padding(
                padding: EdgeInsets.all(20),
                child:  Image.asset("image/music.jpg",height: 100,width: 100,),
              ),Padding(
                padding: EdgeInsets.all(20),
                child:  Image.asset("image/music.jpg",height: 100,width: 100,),
              ),Padding(
                padding: EdgeInsets.all(20),
                child:  Image.asset("image/music.jpg",height: 100,width: 100,),
              ),Padding(
                padding: EdgeInsets.all(20),
                child:  Image.asset("image/music.jpg",height: 100,width: 100,),
              ),Padding(
                padding: EdgeInsets.all(20),
                child:  Image.asset("image/music.jpg",height: 100,width: 100,),
              ),Padding(
                padding: EdgeInsets.all(20),
                child:  Image.asset("image/music.jpg",height: 100,width: 100,),
              ),Padding(
                padding: EdgeInsets.all(20),
                child:  Image.asset("image/music.jpg",height: 100,width: 100,),
              ),Padding(
                padding: EdgeInsets.all(20),
                child:  Image.asset("image/music.jpg",height: 100,width: 100,),
              ),Padding(
                padding: EdgeInsets.all(20),
                child:  Image.asset("image/music.jpg",height: 100,width: 100,),
              ),Padding(
                padding: EdgeInsets.all(20),
                child:  Image.asset("image/music.jpg",height: 100,width: 100,),
              ),Padding(
                padding: EdgeInsets.all(20),
                child:  Image.asset("image/music.jpg",height: 100,width: 100,),
              ),Padding(
                padding: EdgeInsets.all(20),
                child:  Image.asset("image/music.jpg",height: 100,width: 100,),
              ),
            ],
          ),
        )
    );
  }
}