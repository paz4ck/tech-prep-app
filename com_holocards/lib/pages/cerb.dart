import 'package:flutter/material.dart';

class CerbPage extends StatelessWidget {
  const CerbPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Breakfast'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      )
    );
  }
}