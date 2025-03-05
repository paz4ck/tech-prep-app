import 'package:com_holocards/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4,)
    );

    _animation = Tween<double>(begin: 1.0, end: 0.0).animate(_controller);

    _controller.forward();

    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => const HomePage(),
      ));
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(
            'assets/icons/bgTEMP1.svg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.black.withOpacity(_animation.value),
              );
            },
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(1000),
                  child: SvgPicture.asset(
                    'assets/icons/HCimg.svg',
                    height: 200,
                    width: 200,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'HoloCards',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.amber,
                    fontSize: 32,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}