import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                color: const Color.fromARGB(255, 245, 220, 140),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
          ),
          child: SvgPicture.asset('assests/icons/MainLogo.svg')
        ),
      )
    );
  }
}