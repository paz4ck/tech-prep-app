import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/loading.dart';
import 'pages/cerb.dart';
import 'pages/medusa.dart';
import 'pages/satyr.dart';
import 'pages/c.dart';
import 'pages/r.dart';
import 'pages/s.dart';
import 'pages/comm.dart';

var counter = 0; 
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

    //Below shows how to include fonts when programming a text area
      //theme: ThemeData(
        //textTheme: TextTheme(
          //bodyText1: TextStyle(fontFamily: 'AcLonica'),
          //bodyText2: TextStyle(fontFamily: 'GothamUltra'),
          //bodyText3: TextStyle(fontFamily: 'GothamNarrowMedium'),
          //bodyText4: TextStyle(fontFamily: 'HelveticaBold'),
          //bodyText5: TextStyle(fontFamily: 'Helvetica'),
        //)
      //)
    //End of fonts include section
    
      home: CommunityPage()
    );
  }
}
