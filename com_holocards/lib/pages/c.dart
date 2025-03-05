import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'r.dart';
import 'home.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(), // Use the appBar function from home.dart
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF3E2723), // Dark Brown
              Color(0xFF5D4037), // Medium Brown
            ],
          ),
        ),
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 600),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/HCimg.svg',
                  width: 150,
                  height: 150,
                ),
                SizedBox(height: 40),
                _buildMenuButton(context, 'CARD DATABASE', Colors.green[400]!, Colors.green[800]!),
                SizedBox(height: 15),
                _buildMenuButton(context, 'HOW TO PLAY', Colors.green[400]!, Colors.green[800]!),
                SizedBox(height: 15),
                _buildMenuButton(context, 'BACK', Colors.green[400]!, Colors.green[800]!),
                SizedBox(height: 15),
                _buildMenuButton(context, 'QUIT', Colors.red[400]!, Colors.red[800]!),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMenuButton(BuildContext context, String text, Color textColor, Color hoverColor) {
    return SizedBox(
      width: 250,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF4E342E), // Dark Brown
          foregroundColor: textColor,
          padding: EdgeInsets.symmetric(vertical: 18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(color: Colors.amber, width: 2),
          ),
          elevation: 5,
        ),
        onPressed: () {
          switch (text) {
            case 'CARD DATABASE':
              break;
            case 'HOW TO PLAY':
              Navigator.push(context, MaterialPageRoute(builder: (context) => RulesPage()));

            case 'BACK':
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));

            case 'QUIT':
              SystemNavigator.pop();

          }
        },
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                blurRadius: 3,
                color: Colors.black.withAlpha((0.5 * 255).toInt()),
              )
            ],
          ),
        ),
      ),
    );
  }
}



AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.black, // Set the background color of the AppBar to transparent
      elevation: 0, // Remove the shadow of the AppBar
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