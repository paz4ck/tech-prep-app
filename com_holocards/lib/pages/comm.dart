import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'home.dart';

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
      backgroundColor: Colors.black,
      appBar: appBar(),
      body: Stack(
        children: [
          SvgPicture.asset(
            'assets/icons/homeBGTEMP.svg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Column(
            children: <Widget>[
              // Title and back arrow
              Padding(
                padding: const EdgeInsets.only(top: 21.0, left: 16.0, right: 16.0, bottom: 16.0), // Move the title area down by 5 pixels
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => const HomePage()),
                        );
                      },
                      child: SvgPicture.asset(
                        'assets/icons/Arrow - Left 2.svg',
                        height: 30,
                        width: 30,
                        color: Colors.white, // Set the arrow color to white
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Community',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 34, 85, 34),
                      ),
                    ),
                  ],
                ),
              ),
              // Buttons
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: 200, // Set the width of the buttons
                        height: 60, // Set the height of the buttons
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF314e27),
                            splashFactory: InkRipple.splashFactory, // Add ripple effect
                          ),
                          onPressed: () {
                            _copyToClipboard(context, 'https://www.pokemon.com/us/pokemon-tcg', 'HoloCard Domain copied to clipboard');
                          },
                          child: const Text(
                            'Holocard Website',
                            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20), // Move the buttons up by 20 pixels
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 150, // Set the width of the buttons
                            height: 60, // Set the height of the buttons
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF314e27),
                                side: const BorderSide(color: Color(0xFF314e27), width: 2.0), // Outline color and width
                                splashFactory: InkRipple.splashFactory, // Add ripple effect
                              ),
                              onPressed: () {
                                _copyToClipboard(context, 'https://www.example2.com', 'Example 2 copied to clipboard');
                              },
                              child: const Text(
                                'Discord',
                                style: TextStyle(color: Color.fromARGB(255, 255, 255, 254)),
                              ),
                            ),
                          ),
                          const SizedBox(width: 20), // Space between buttons
                          SizedBox(
                            width: 150, // Set the width of the buttons
                            height: 60, // Set the height of the buttons
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF314e27),
                                splashFactory: InkRipple.splashFactory, // Add ripple effect
                              ),
                              onPressed: () {
                                _copyToClipboard(context, 'https://www.example3.com', 'Example 3 copied to clipboard');
                              },
                              child: const Text(
                                'YouTube',
                                style: TextStyle(color: Color.fromARGB(255, 255, 255, 254)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20), // Space between rows
                      SizedBox(
                        width: 200, // Set the width of the buttons
                        height: 60, // Set the height of the buttons
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF314e27),
                            splashFactory: InkRipple.splashFactory, // Add ripple effect
                          ),
                          onPressed: () {
                            _copyToClipboard(context, 'holocards.dev@gmail.com', 'Email copied to clipboard');
                          },
                          child: const Text(
                            'Business Email',
                            style: TextStyle(color: Color.fromARGB(255, 255, 255, 254)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
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
}