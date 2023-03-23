import 'dart:async';
import 'package:application_dooz/screens/home_screen.dart';
import 'package:application_dooz/selection_game.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Application());
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
      Duration(seconds: 5),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => MainPageState(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    'images/logo.png',
                    width: 150,
                    height: 150,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Dooz',
                  style: TextStyle(
                    color: Color(0xff30CCFF),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        blurRadius: 20.0, // shadow blur
                        color: Color(0xff30CCFF), // shadow color
                        offset:
                            Offset(3.0, 2.0), // how much shadow will be shown
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'اپلیکیشن دوز برنامه ای برای سرگرمی',
                  style: TextStyle(
                    color: Color(0xff30CCFF),
                    fontFamily: 'DB',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        blurRadius: 20.0, // shadow blur
                        color: Color(0xff30CCFF), // shadow color
                        offset:
                            Offset(3.0, 2.0), // how much shadow will be shown
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xff1A1D27),
    );
  }
}
