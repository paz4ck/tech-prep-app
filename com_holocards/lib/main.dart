import 'package:com_holocards/pages/loading.dart';
import 'package:com_holocards/pages/test.dart';
import 'package:flutter/material.dart';
import 'pages/c.dart';
import 'pages/home.dart';
import 'pages/test.dart';

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
    
      home: CardsPage()
    );
  }
}
