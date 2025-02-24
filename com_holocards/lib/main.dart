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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}
