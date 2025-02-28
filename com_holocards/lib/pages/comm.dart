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
        title: Text('Community'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                _copyToClipboard(context, 'https://www.pokemon.com/us/pokemon-tcg', 'Example 1 copied to clipboard');
              },
              child: Text('Copy Pokemon'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _copyToClipboard(context, 'https://www.example2.com', 'Example 2 copied to clipboard');
              },
              child: Text('Copy Example 2'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _copyToClipboard(context, 'https://www.example3.com', 'Example 3 copied to clipboard');
              },
              child: Text('Copy Example 3'),
            ),
          ],
        ),
      ),
    );
  }
}