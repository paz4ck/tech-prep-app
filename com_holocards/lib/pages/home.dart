import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
    );
  }
}

AppBar appBar(){
  return AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Holo',
              style: TextStyle(
                fontFamily: 'AcLonica',
                fontSize: 24,
                color: Color.fromARGB(255, 34, 85, 34),
              ),
            ),
            Text(
              'Cards',
              style: TextStyle(
                fontFamily: 'AcLonica',
                fontSize: 24,
                color: Color.fromARGB(255, 245, 220, 140),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: Container(
          margin: const EdgeInsets.all(6),
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: const Color(0xffF7F8F8),
            borderRadius: BorderRadius.circular(30),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: SvgPicture.asset(
              'assets/icons/HCimg.svg',
              fit: BoxFit.contain,
            ),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(6),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 0, 0, 0),
              borderRadius: BorderRadius.circular(30),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: SvgPicture.asset(
                'assets/icons/HCimg.svg',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      );
}