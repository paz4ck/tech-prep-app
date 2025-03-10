import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'home.dart';

class CardsPage extends StatelessWidget {
  const CardsPage({super.key});

  void _copyToClipboard(BuildContext context, String link, String message) {
    Clipboard.setData(ClipboardData(text: link));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
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
                      'Cards',
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 150, // Set the width of the buttons
                            height: 180, // Set the height of the buttons
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                 backgroundColor: const Color.fromARGB(255, 245, 220, 140),
                                 shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(50.0), // Remove border radius
                                 ),
                                splashFactory: InkRipple.splashFactory, // Add ripple effect
                              ),
                              onPressed: () {
                                _copyToClipboard(context, 'https://www.pokemon.com/us/pokemon-tcg', 'HoloCard Domain copied to clipboard');
                              },
                              child: SvgPicture.asset(
                                'assets/icons/cerberus.svg',
                                height: 80,
                                width: 30,
                              ),
                            ),
                          ),
                          const SizedBox(width: 20), // Space between buttons
                          SizedBox(
                            width: 180, // Set the width of the buttons
                            height: 120, // Set the height of the buttons
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF314e27),
                                splashFactory: InkRipple.splashFactory,
                                shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(25.0), // Remove border radius
                                 ), // Add ripple effect
                              ),
                              onPressed: () {
                                _copyToClipboard(context, 'holocards.dev@gmail.com', 'Email copied to clipboard');
                              },
                              child: const Text(
                                'Cerberus\n  *|-|311\'s Might\n  *3 Headed Fury',
                                style: TextStyle(color: Color.fromARGB(255, 255, 255, 254)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20), // Space between rows
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 150, // Set the width of the buttons
                            height: 180, // Set the height of the buttons
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                 backgroundColor: const Color.fromARGB(255, 245, 220, 140),
                                splashFactory: InkRipple.splashFactory,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0), // Remove border radius
                                 ), // Add ripple effect
                              ),
                              onPressed: () {
                                _copyToClipboard(context, 'https://www.example2.com', 'Example 2 copied to clipboard');
                              },
                              child: SvgPicture.asset(
                                'assets/icons/gorgon.svg',
                                height: 80,
                                width: 30,
                              ),
                            ),
                          ),
                          const SizedBox(width: 20), // Space between buttons
                          SizedBox(
                            width: 180, // Set the width of the buttons
                            height: 120, // Set the height of the buttons
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF314e27),
                                splashFactory: InkRipple.splashFactory,
                                shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(25.0), // Remove border radius
                                 ), // Add ripple effect
                              ),
                              onPressed: () {
                                _copyToClipboard(context, 'https://www.example3.com', 'Example 3 copied to clipboard');
                              },
                              child: const Text(
                                'Gorgon\n  *SLithering Strike\n  *Sight of Stone',
                                style: TextStyle(color: Color.fromARGB(255, 255, 255, 254)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20), // Space between rows
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 150, // Set the width of the buttons
                            height: 180, // Set the height of the buttons
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                 backgroundColor: const Color.fromARGB(255, 245, 220, 140),
                                splashFactory: InkRipple.splashFactory,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0), // Remove border radius
                                 ), // Add ripple effect
                              ),
                              onPressed: () {
                                _copyToClipboard(context, 'https://www.example4.com', 'Example 4 copied to clipboard');
                              },
                              child: SvgPicture.asset(
                                'assets/icons/satyr.svg',
                                height: 80,
                                width: 30,
                              ),
                            ),
                          ),
                          const SizedBox(width: 20), // Space between buttons
                          SizedBox(
                            width: 180, // Set the width of the buttons
                            height: 120, // Set the height of the buttons
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF314e27),
                                splashFactory: InkRipple.splashFactory,
                                shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(25.0), // Remove border radius
                                 ), // Add ripple effect
                              ),
                              onPressed: () {
                                _copyToClipboard(context, 'https://www.example5.com', 'Example 5 copied to clipboard');
                              },
                              child: const Text(
                                'Satyr Image\n   *Elixir of Life\n  *Bucking Beauty',
                                style: TextStyle(color: Color.fromARGB(255, 255, 255, 254)),
                              ),
                            ),
                          ),
                        ],
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
      backgroundColor: Colors.transparent, // Set the background color of the AppBar to transparent
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