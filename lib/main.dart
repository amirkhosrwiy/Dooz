import 'dart:async';

import 'package:application_dooz/screens/selection_game.dart';
import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

void main() async {
  runApp(const Application());
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 1),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => GotoHome_Screen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 240),
              child: Image.asset(
                'images/logo.png',
                width: 150,
                height: 150,
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'بازی دوز',
            style: TextStyle(
              color: Color(0xff30CCFF),
              fontSize: 50,
              fontWeight: FontWeight.bold,
              // fontWeight: FontWeight.bold,
              fontFamily: 'IRAN',
              shadows: [
                Shadow(
                  blurRadius: 20.0, // shadow blur
                  color: Color(0xff30CCFF), // shadow color
                  offset: Offset(3.0, 2.0), // how much shadow will be shown
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: Text(
              'اپلیکیشنی برای سرگرمی',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'IRAN',
                fontSize: 25,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    blurRadius: 20.0, // shadow blur
                    color: Color(0xffE23E58), // shadow color
                    offset: Offset(3.0, 2.0), // how much shadow will be shown
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
              Stack(
                children: [
                  Positioned(
                    top: 140,
                    child: Lottie.asset('assets/lottie/15.json',
                        width: 200, height: 200),
                  ),
                  Lottie.asset('assets/lottie/11.json',
                      width: 200, height: 300),
                  Positioned(
                    top: 240,
                    left: 55,
                    child: Text(
                      'شکیبا باشید',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'IRAN',
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            blurRadius: 20.0, // shadow blur
                            color: Color(0xffE23E58), // shadow color
                            offset: Offset(
                                3.0, 2.0), // how much shadow will be shown
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Color(0xff1A1D27),
    );
  }
}
