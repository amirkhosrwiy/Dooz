import 'dart:async';

import 'package:application_dooz/screens/selection_game.dart';
import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
import 'package:flutter/services.dart';

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
      Duration(seconds: 7),
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
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    'images/logo2.png',
                    width: 150,
                    height: 150,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'بازی دوز',
                  style: TextStyle(
                    color: Color(0xff30CCFF),
                    fontSize: 40,
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
                ),
                SizedBox(height: 20),
                Center(
                  child: Text(
                    'اپلیکیشنی برای سرگرمی',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'IRAN',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          blurRadius: 20.0, // shadow blur
                          color: Colors.white, // shadow color
                          offset:
                              Offset(3.0, 2.0), // how much shadow will be shown
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 260),
                // Center(
                //   child: Text(
                //     '',
                //     style: TextStyle(
                //       color: Color(0xff00D7FF),
                //       fontFamily: 'QT',
                //       fontSize: 20,
                //       fontWeight: FontWeight.bold,
                //       shadows: [
                //         Shadow(
                //           blurRadius: 20.0, // shadow blur
                //           color: Color(0xff30CCFF), // shadow color
                //           offset:
                //               Offset(3.0, 2.0), // how much shadow will be shown
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xff1A1D27),
    );
  }
}
