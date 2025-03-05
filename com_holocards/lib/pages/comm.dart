import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  void _copyToClipboard(BuildContext context, String link, String message) {
    Clipboard.setData(ClipboardData(text: link));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Community',
            style: TextStyle(
              fontSize: 24.0, // Larger text size
              fontWeight: FontWeight.bold, // Bold text
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
          splashRadius: 24.0, // Add splash effect
        ),
        shadowColor: Colors.black38,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        elevation: 5.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 200, // Set the width of the buttons
              height: 60, // Set the height of the buttons
              child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF314e27),
                splashFactory: InkRipple.splashFactory, // Add ripple effect
              ),
              onPressed: () {
                _copyToClipboard(context, 'https://www.pokemon.com/us/pokemon-tcg', 'Example 1 copied to clipboard');
              },
              child: Text(
                'Holocard Website',
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
              ),
              ),
            ),
            SizedBox(height: 40), // Increased space between buttons
            SizedBox(
              width: 200, // Set the width of the buttons
              height: 60, // Set the height of the buttons
              child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                side: BorderSide(color: Color(0xFF314e27), width: 2.0), // Outline color and width
                splashFactory: InkRipple.splashFactory, // Add ripple effect
              ),
              onPressed: () {
                _copyToClipboard(context, 'https://www.example2.com', 'Example 2 copied to clipboard');
              },
              child: Text(
                'Random Link',
                style: TextStyle(color: Color(0xFF314e27)), // Text color
              ),
              ),
            ),
            SizedBox(height: 40), // Increased space between buttons
            SizedBox(
              width: 200, // Set the width of the buttons
              height: 60, // Set the height of the buttons
              child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF314e27),
                splashFactory: InkRipple.splashFactory, // Add ripple effect
              ),
              onPressed: () {
                _copyToClipboard(context, 'https://www.example3.com', 'Example 3 copied to clipboard');
              },
              child: Text(
                'Random Link',
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 254)),
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}