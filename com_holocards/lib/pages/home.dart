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
          margin: EdgeInsets.all(2),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xffF7F8F8),
            borderRadius: BorderRadius.circular(30)
          ),
           child: ClipRRect(
            borderRadius: BorderRadius.circular(30), // Ensure the image itself is clipped to the circular shape
            child: SvgPicture.asset('assets/icons/HCimg.svg',
            height: 200,
            width: 200,),
          ),
        ),
        actions: [
          Container(
          margin: EdgeInsets.all(1),
          alignment: Alignment.center,
          width: 51,
          height: 51,
          decoration: BoxDecoration(
            color: Color(0xffF7F8F8),
            borderRadius: BorderRadius.circular(1000)
          ),
           child: ClipRRect(
            borderRadius: BorderRadius.circular(1000), // Ensure the image itself is clipped to the circular shape
            child: SvgPicture.asset('assets/icons/HCimg.svg',
            height: 2000,
            width: 2000,),
          ),
        ),
        ],
      )
    );
  }
}