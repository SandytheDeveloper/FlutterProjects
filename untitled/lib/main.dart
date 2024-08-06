import 'package:flutter/cupertino.dart';
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

        primarySwatch: Colors.blue
      ),
     debugShowCheckedModeBanner: false,
     home: Homepage(),
    );
  }
}


class Homepage extends StatelessWidget{

  var no = TextEditingController();
  var fname = TextEditingController();
  var lname = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Column(
        children: [
          TextField(
            controller: no,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter Your Number:",
              prefixIcon: Icon(Icons.vpn_key)

            ),
          ),
          Padding(padding: EdgeInsets.all(20),
            child: TextField(
              controller: fname,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter Your First Name",
              prefixIcon: Icon(Icons.assignment_ind_outlined)
            ),
            // obscureText: true,
    ),
          ),
          Padding(padding: EdgeInsets.all(20),
            child: TextField(
              controller: lname,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter Your Last Name",
                prefixIcon: Icon(Icons.remove_red_eye)
              ),
              // obscureText: true,
            ),),
          Padding(padding: EdgeInsets.all(20),
            child: FlatButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                    secondhome(num : no.text,fnm : fname.text,lnm : lname.text)));
              },
              child: Text('Press here'),
              color: Colors.blue,
              textColor: Colors.amberAccent,
            ),
          )
        ],
      ),
    );
  }

}


class secondhome extends StatelessWidget{

  var num;
  var fnm;
  var lnm;

  secondhome({this.num,this.fnm,this.lnm});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Column(
        // child: Text('My Number is '+num,style: TextStyle(color: Colors.lightGreen,fontSize: 25),),
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Center(child: Text('My Number is $num', style: TextStyle(fontSize: 22)),
      ),
          Center(child: Text('My Name is $fnm $lnm', style: TextStyle(fontSize: 22)),
          ),
        ],
      ),
    );
  }

}
