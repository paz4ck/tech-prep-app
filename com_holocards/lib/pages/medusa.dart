import 'package:flutter/material.dart';

class MedusaPage extends StatelessWidget {
  const MedusaPage({super.key});

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