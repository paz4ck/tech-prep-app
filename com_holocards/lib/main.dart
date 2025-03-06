import 'package:com_holocards/pages/loading.dart';
<<<<<<< Updated upstream
=======

>>>>>>> Stashed changes
import 'package:flutter/material.dart';


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
    
      home: LoadingPage()
    );
  }
}
