import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';
import 'home.dart';
import 'r.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardsPage extends StatelessWidget {
  final Uri _databaseUrl = Uri.parse('https://holocards.dev/database.html');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Holocards'),
        backgroundColor: Color(0xFF4E342E),
      ),
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
                  color: Colors.white.withAlpha((0.8 * 255).toInt()),
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
          switch(text) {
            case 'CARD DATABASE':
              launchUrl(_databaseUrl);
              break;
            case 'HOW TO PLAY':
              Navigator.push(context, MaterialPageRoute(builder: (context) => RulesPage()));
              break;
            case 'BACK':
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
              break;
            case 'QUIT':
              SystemNavigator.pop();
              break;
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