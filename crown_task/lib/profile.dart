import 'dart:html';

import 'package:crown_task/GlobalVariable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';


class Profile extends StatefulWidget{
  @override
  // State<StatefulWidget> createState() {
  //   // TODO: implement createState
  //   throw UnimplementedError();
  // }
  Profile_ createState() => Profile_();
}


class Profile_ extends State<Profile>{

  var group="Male"; //For gender Selection

  DateTime date= new DateTime.now();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        backgroundColor: owncolor,
      ),
      body: Column(
        children: [


          // Padding(padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
          //   child:   Image(
          //     image: AssetImage("image/user.png"),
          //     width: 80,
          //     height: 80,
          //   ),
          // ),
          Padding(padding: EdgeInsets.fromLTRB(50, 20, 50, 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                  labelText: "First Name",
                  prefixIcon: Icon(Icons.person)
              ),
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                  labelText: "Last Name",
                  prefixIcon: Icon(Icons.person)
              ),
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                  labelText: "Email",
                  prefixIcon: Icon(Icons.mail)
              ),
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                  labelText: "Mobile no",
                  prefixIcon: Icon(Icons.phone_iphone)
              ),
            ),
          ),

          //>>>>>>>>>>>>>>>>>>>>> GENDER Selection
          Padding(padding: EdgeInsets.fromLTRB(50, 15, 50, 10),
            child: Row(
              children: [
                SizedBox(width: 10,),
                Text('Gender :',style: TextStyle(fontSize: 18),),
                SizedBox(width: 20,),
                Text('Male',style: TextStyle(fontSize: 16,color: Colors.blueGrey)),
                Radio(value: 'Male', groupValue: group, onChanged: (G){
                  setState(() {
                    print("male");
                    group = G;
                  });
                },
                ),
                SizedBox(width: 20,),
                Text('Female',style: TextStyle(fontSize: 16,color: Colors.blueGrey)),
                Radio(value: 'Female', groupValue: group, onChanged: (G){
                  setState(() {
                    print("female");
                    group = G;
                  });
                },
                ),
              ],
            ),
          ),

          Padding(padding: EdgeInsets.fromLTRB(50, 15, 50, 10),
            child: Row(
                children: [
                  SizedBox(width: 10,),
                  Text('DOB :',style: TextStyle(fontSize: 18)),
                  SizedBox(width: 20,),
                  Text('${date.day}/${date.month}/${date.year}',style: TextStyle(fontSize: 16,color: Colors.blueGrey)),
                  SizedBox(width: 20,),

                  ElevatedButton(
                    child: Text('Select Date'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey, // Background color
                    ),
                    onPressed: () async {
                      DateTime newDate = await showDatePicker(
                          context: context,
                          initialDate: date,
                          firstDate: DateTime(1900),
                          lastDate: DateTime.now()
                      );

                      if(newDate == null) return;
                      setState(() => date = newDate );
                      },
                  ),
                ],
            ),
          ),
          Padding(padding: EdgeInsets.all(30),
          child: FlatButton(
            child: Text('SUBMIT',style: TextStyle(color: Colors.white,fontSize: 16)),
            color: owncolor,
            highlightColor: seccolor,
            padding: EdgeInsets.symmetric(vertical: 20,horizontal: 40),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                  HomePage()));
            },
          ),
          ),
        ],
      ),
    );

  }

}