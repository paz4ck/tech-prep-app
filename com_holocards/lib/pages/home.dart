import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gotham Ultra',
                style: TextStyle(
                  fontFamily: 'GothamUltra',
                  fontSize: 24,
                  ),
                ),
                backgroundColor: Colors.blue,
                centerTitle: true,
      )
    );
  }
}