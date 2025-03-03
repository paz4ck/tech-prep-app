import 'package:com_holocards/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<TestPage> 
with SingleTickerProviderStateMixin {

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => const HomePage(), 
        ),
      );
    }
  );
}

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
    overlays: SystemUiOverlay.values);
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
         color: Colors.blue
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(1000),
              child: SvgPicture.asset('assets/icons/HCimg.svg',
              height: 200,
              width: 200,),
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
    );
  }
}