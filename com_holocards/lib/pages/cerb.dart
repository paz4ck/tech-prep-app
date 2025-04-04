import 'package:com_holocards/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CerbPage extends StatefulWidget {
  const CerbPage({super.key});

  @override
  State<CerbPage> createState() => _CerbPageState();
}

class _CerbPageState extends State<CerbPage> {
  late YoutubePlayerController _youtubeController;

  @override
  void initState() {
    super.initState();
    _youtubeController = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=NjFMShuqrGo")!,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        loop: true,
        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    _youtubeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.grey[900]!,
              Colors.grey[800]!,
              Colors.grey[700]!,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const HomePage()),
                      );
                    },
                    child: SvgPicture.asset(
                      'assets/icons/Arrow - Left 2.svg',
                      height: 30,
                      width: 30,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Cerberus',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 115, 39, 238),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 350,
                color: Colors.grey[300],
                child: YoutubePlayer(
                  controller: _youtubeController,
                  showVideoProgressIndicator: true,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  width: double.infinity,
                  height: 200,
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
                          'Hells Might - When exhausting only 2 Theta attack cards, Deal 250 damage and DOUBLE your damage next turn (Before Type Bonus)',
                          style: TextStyle(color: Colors.deepOrange, fontSize: 16),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '3 Headed Fury - When exhausting only 3 Theta attack cards, Deal 250 damage plus 100 for each additional attack card of any type discarded.',
                          style: TextStyle(color: Colors.deepOrange, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
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