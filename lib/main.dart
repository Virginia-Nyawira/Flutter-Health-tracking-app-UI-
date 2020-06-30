import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:stayfit/screens/screen_two.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      theme: ThemeData(
       // primaryColor: Colors.white30,
        primaryColorBrightness: Brightness.dark,
        //primarySwatch: Colors.grey[400],
        accentColor: Colors.yellow[100],
      ),
      home: ScreenOne()
    );
  }
}
/*
AnimatedCrossFade(
      crossFadeState: CrossFadeState.showFirst,
      duration: const Duration(milliseconds: 900),
      firstCurve: Curves.bounceIn,
      secondCurve: Curves.bounceOut,
      sizeCurve: Curves.bounceOut,
      firstChild:Text("data"),
      secondChild:  Icon(Icons.pan_tool),
    );

Stack(
          children: <Widget>[
            Container(
              child: Positioned.fill(
                top: 20,bottom: 2,right: 2,left: 2,
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 5,
                    sigmaY: 5,
                  ),
                  child: Container(
                    color: Colors.black26,
                    child: Image.asset(
                        "images/download.png"),
                  ),
                ),
              ),
            ),
          ],
        ),



AnimatedContainer(
      height: 50,
      width: 50,
      color: Colors.green,
      duration: Duration(seconds: 2),
      curve: Curves.bounceIn,
     child: Container(
       decoration: BoxDecoration(
         color: Colors.blue,
         borderRadius: BorderRadius.circular(20.0)
       ),
       child: Center(
         child:Icon(
             Icons.ac_unit),
       ),
     ),
    );*/