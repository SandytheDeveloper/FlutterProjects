import 'package:crown_task/GlobalVariable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class setting extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Settings'),
        backgroundColor: owncolor,
      ),
      body: ListView(
              children: [
                SizedBox(height: 5,),
                ListTile(
                  title: Text('Change Password'),
                  leading: Icon(Icons.vpn_key),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)
                    => password()));
                  },
                ),
                Divider(color: Colors.grey,thickness: 0.1,height: 4,),
                ListTile(
                  title: Text('Notification'),
                  leading: Icon(Icons.notifications_active_rounded),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)
                    => notification()));
                  },
                ),
                Divider(color: Colors.grey,thickness: 0.1,height: 4,),
                ListTile(
                  title: Text('Terms & Condition'),
                  leading: Icon(Icons.article),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)
                    => terms()));
                  },
                ),
                Divider(color: Colors.grey,thickness: 0.1,height: 4,),
                ListTile(
                  title: Text('Help'),
                  leading: Icon(Icons.help),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)
                    => help()));
                  },
                ),
                Divider(color: Colors.grey,thickness: 0.1,height: 4,),
                ListTile(
                  title: Text('About Us'),
                  leading: Icon(Icons.info),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)
                    => aboutus()));
                  },
                ),
                Divider(color: Colors.grey,thickness: 0.1,height: 4,)
              ],
            ),
    );
  }
}

//==================================CHANGE PASSWORD=============================

class password extends StatefulWidget{
  @override
  _password createState() => _password();
}

class _password extends State<password>{
  bool _isObscure = true;
  bool _isObscure2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Password'),
        backgroundColor: owncolor,
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.fromLTRB(50, 20, 50, 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                  labelText: "Old Password",
                  prefixIcon: Icon(Icons.vpn_key_rounded),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isObscure ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                ),
              ),  obscureText: _isObscure,
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(50, 20, 50, 10),
            child: TextField(

              decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                  labelText: "New Password",

                  prefixIcon: Icon(Icons.remove_red_eye_rounded),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isObscure2 ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _isObscure2 = !_isObscure2;
                    });
                  },
                ),
              ),  obscureText: _isObscure2,
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(50, 20, 50, 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                  labelText: "Confirm Password",
                  prefixIcon: Icon(Icons.remove_red_eye_rounded),
                suffixIcon: IconButton(
                  icon: Icon(
                    _isObscure2 ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _isObscure2 = !_isObscure2;
                    });
                  },
                ),
              ), obscureText: _isObscure2,
            ),
          ),
          Padding(padding: EdgeInsets.all(20),
            child: FlatButton(
              child: Text('Submit'),
              color: seccolor,
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

//==================================NOTIFICATION=============================

class notification extends StatefulWidget{
  _notification createState() => _notification();
}

class _notification extends State<notification>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
        backgroundColor: owncolor,
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Early Booking Bonus Sale'),
            subtitle: Text('Save up to 50%'),
            leading: Icon(Icons.notifications_active),
            onTap: (){},
          ),
          Divider(color: Colors.grey,thickness: 0.1,height: 4,),
          ListTile(
            title: Text('Book Now'),
            subtitle: Text('Flat 60% off on Online Booking'),
            leading: Icon(Icons.notifications_active),
            onTap: (){},
          ),
          Divider(color: Colors.grey,thickness: 0.1,height: 4,),
          ListTile(
            title: Text('Special Offer'),
            subtitle: Text('Save up to 80%'),
            leading: Icon(Icons.notifications_active),
            onTap: (){},
          ),
          Divider(color: Colors.grey,thickness: 0.1,height: 4,),
          ListTile(
            title: Text('Limited Offer'),
            subtitle: Text('Flat 40% on Titan Watch'),
            leading: Icon(Icons.notifications_active),
            onTap: (){},
          ),
          Divider(color: Colors.grey,thickness: 0.1,height: 4,),

        ],
      ),
    );
  }
}

//==================================TERMS AND CONDITIONS=============================

class terms extends StatefulWidget{
  _terms createState() => _terms();
}

class _terms extends State<terms>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Terms and Conditions'),
        backgroundColor: owncolor,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.fromLTRB(50, 40, 50, 10),
              child: Text('Updated at 2022-05-15'),
            ),
            Padding(padding: EdgeInsets.fromLTRB(50, 20, 50, 10),
              child: Text('General Terms',style :TextStyle(fontWeight: FontWeight.bold,fontSize: 24)),
            ),
            Padding(padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
              child: Text(
                      '                '+'By accessing and placing an order with , you confirm that you are in agreement with and bound by the terms of service '
                      'contained in the Terms & Conditions outlined below. These terms apply to the entire website and any email or other type of '
                      'communication between you and . '
                      'Under no circumstances shall team be liable for any direct, indirect, special, incidental or consequential damages, including, '
                          'but not limited to, loss of data or profit, arising out of the use, or the inability to use, the materials on this site, even if team or '
                          'an authorized representative has been advised of the possibility of such damages. If your use of materials from this site '
                          'results in the need for servicing, repair or correction of equipment or data, you assume any costs thereof. '
                          'will not be responsible for any outcome that may occur during the course of usage of our resources. We reserve the rights to '
                          'change prices and revise the resources usage policy in any moment.'
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//==================================HELP=============================

class help extends StatefulWidget{
  _help createState() => _help();
}

class _help extends State<help>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help'),
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

//==================================ABOUT US=============================

class aboutus extends StatefulWidget{
  _aboutus createState() => _aboutus();
}

class _aboutus extends State<aboutus>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
        centerTitle: true,
        backgroundColor: owncolor,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.fromLTRB(40, 40, 40, 20),
            child: Text("Welcome to Our Application, your number one source for all things [product, ie: shoes, bags, dog treats]. "
                " We're dedicated to giving you the very best of [product], "
                "with a focus on [three characteristics, ie: dependability, customer service and uniqueness.] "
                "Founded in [year] by [founder's name], [store name] has come a long way from its beginnings in a "
                "[starting location, ie: home office, toolshed, Houston, TX.]. When [store founder] first started out, "
                "his/her passion for [passion of founder, ie: helping other parents be more eco-friendly, providing the  "
                "best equipment for his fellow musicians] drove him to [action, ie: do intense research, quit her day job], "
                "and gave him the impetus to turn hard work and inspiration into to a booming online store. We now serve "
                "customers all over [place, ie: the US, the world, the Austin area], and are thrilled to be a part of "
                "the [adjective, ie: quirky, eco-friendly, fair trade] wing of the [industry type, ie: fashion, baked goods, watches] industry. \n\n"

                "We hope you enjoy our products as much as we enjoy offering them to you. If you have any questions or comments, please don't hesitate to contact us.\n\n"

                "Sincerely\n"
                "Name,  [Crown Application, CEO, Founder]"),
            ),

          ],
        ),
      ),
    );
  }
}
