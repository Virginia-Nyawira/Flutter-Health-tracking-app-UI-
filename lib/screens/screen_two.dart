import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stayfit/screens/dashboard.dart';

class ScreenOne extends StatefulWidget {
  @override
  _ScreenOneState createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(25, 20, 25, 25),
          child: Center(
            child: Column(
              children: <Widget>[
                Image.asset(
                  "images/keepfb.jpeg",
                  width: 400,
                ),
                //Padding(padding: EdgeInsets.only(top: 40.0),),
                Text(
                  "Your Personal",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "Fitness Trainer".toUpperCase(),
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 38,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Anton",),
                ),
//                Row(children: <Widget>[
//                  Padding(
//                    padding: EdgeInsets.only(left: 222.0),
//                  ),
//                  IconButton(icon: Icon(
//                      Icons.arrow_forward_ios,
//                  color: Colors.grey,
//                  size: 15.0,),
//                      onPressed: null)
//                ],),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Dashboard()));
                  },
                  minWidth: double.infinity,
                  height: 40,
                  color: Theme.of(context).primaryColor,
                  child: Text(
                    "GET STARTED",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Lobster",
                        letterSpacing: 2.0
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                MaterialButton(
                  onPressed: () {
                  },
                  minWidth: double.infinity,
                  height: 40,
                  color: Theme.of(context).backgroundColor,
                  child: Text(
                    "SIGN IN",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Lobster",
                        letterSpacing: 2.0
                    ),
                  ),
                ),
               Padding(
                 padding: const EdgeInsets.only(left: 40),
                 child: Row(
                   children: <Widget>[
                     Text("Not registered?",
                       style: TextStyle(
                           color: Colors.black,
                           fontFamily: "Lobster",
                           letterSpacing: 2.0
                       ),),
                     Text("Sign up",
                       style: TextStyle(
                           color: Colors.blue,
                           fontFamily: "Lobster",
                           letterSpacing: 2.0
                       ),)
                   ],
                 ),
               )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
