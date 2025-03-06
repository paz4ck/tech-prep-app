import 'package:com_holocards/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SatyrPage extends StatelessWidget {
  const SatyrPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.green[900]!,
              Colors.green[700]!,
              Colors.green[900]!,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
              ),
            ),
            const Center(
              child: Text(
                'Satyr, Protector of the Forest',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Color.fromARGB(255, 109, 208, 238),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 350, // Adjust the height as needed
              color: Colors.grey[300], // Placeholder color
              child: const Center(
                child: Text(
                  'Video Placeholder',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                width: double.infinity,
                height: 200, // Adjust the height as needed
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Elixer of Life - When exhausted only 2 Tau attack cards, Deal 200 damage and heal one monster for 200 HP or two monsters for 100 HP',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Bucking Beauty - When exhausted only 3 Tau attack cards, Deal 250 damage and shuffle up to 4 attack cards on the field from any player into the deck',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
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