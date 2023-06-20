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
      Duration(seconds: 10),
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
      body: Stack(
        children: [
          Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/logo.png',
                    width: 150,
                    height: 150,
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
                          offset:
                              Offset(3.0, 2.0), // how much shadow will be shown
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
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
                            offset: Offset(
                                3.0, 2.0), // how much shadow will be shown
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            backgroundColor: Color(0xff1A1D27),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 12,
            left: MediaQuery.of(context).size.width / 3,
            child: Stack(
              children: [
                Lottie.asset(
                  'assets/lottie/18.json',
                  width: 150,
                  height: 150,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 120,
            left: MediaQuery.of(context).size.width / 3,
            child: Stack(
              children: [
                Lottie.asset(
                  'assets/lottie/15.json',
                  width: 150,
                  height: 150,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.04,
            left: MediaQuery.of(context).size.width * 0.4,
            child: Stack(
              children: [
                Text(
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
    );
  }
}
