import 'package:adivery/adivery.dart';
import 'package:adivery/adivery_ads.dart';
import 'package:Dooz/screens/home2_screen.dart';
import 'package:Dooz/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

class SelectionGameScreen extends StatefulWidget {
  const SelectionGameScreen({super.key});

  @override
  State<SelectionGameScreen> createState() => _SelectionGameScreenState();
}

class _SelectionGameScreenState extends State<SelectionGameScreen> {
  @override
  void initState() {
    super.initState();
    AdiveryPlugin.initialize('57843ada-fcb1-446a-9494-b472af68408f');
  }

  Widget build(BuildContext context) {
    return GotoHome_Screen();
  }
}

class GotoHome_Screen extends StatelessWidget {
  const GotoHome_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: [
            Color(0xff10416F),
            Color(0xff411C2F),
          ],
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          elevation: 20,
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(90),
              bottomRight: Radius.circular(90),
            ),
          ),
          title: Center(
            child: Text(
              ' دووز ',
              style: TextStyle(
                shadows: [
                  Shadow(
                    blurRadius: 30.0, // shadow blur
                    color: Colors.grey.shade300, // shadow color
                    offset: Offset(3.0, 2.0), // how much shadow will be shown
                  ),
                ],
                color: Colors.white,
                fontSize: 60,
                // fontWeight: FontWeight.bold,
                fontFamily: 'IRAN',
              ),
              textAlign: TextAlign.center,
            ),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[
                  Color.fromARGB(255, 137, 35, 52),
                  Color(0xff1A1D27),
                  Color(0xff1A1D27),
                  Color.fromARGB(255, 77, 157, 238),
                ],
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/wall.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Material(
                    child: InkWell(
                      highlightColor: Colors.blue.withOpacity(0.5),
                      splashColor: Colors.red.withOpacity(0.5),
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'به دوز   3 در 3   خوش آمدید',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontFamily: 'IRAN',
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                    blurRadius: 30.0, // shadow blur
                                    color: Colors.grey.shade300, // shadow color
                                    offset: Offset(3.0,
                                        2.0), // how much shadow will be shown
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
                            backgroundColor: Color.fromARGB(255, 36, 42, 61),
                          ),
                        );
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Home(),
                          ),
                        );
                      },
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/select1.jpg'),
                          ),
                          borderRadius: BorderRadius.circular(25),
                          border: const GradientBoxBorder(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 137, 35, 52),
                                Color.fromARGB(255, 77, 157, 238),
                              ],
                            ),
                            width: 7,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Center(
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Material(
                            child: InkWell(
                              highlightColor: Colors.blue.withOpacity(0.5),
                              splashColor: Colors.red.withOpacity(0.5),
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'به دوز   6 در 7   خوش آمدید',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontFamily: 'IRAN',
                                        fontWeight: FontWeight.bold,
                                        shadows: [
                                          Shadow(
                                            blurRadius: 30.0, // shadow blur
                                            color: Colors
                                                .grey.shade300, // shadow color
                                            offset: Offset(3.0,
                                                2.0), // how much shadow will be shown
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    backgroundColor:
                                        Color.fromARGB(255, 36, 42, 61),
                                  ),
                                );

                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => Home2(),
                                  ),
                                );
                              },
                              child: Container(
                                width: 200,
                                height: 200,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('images/select2.jpg'),
                                  ),
                                  borderRadius: BorderRadius.circular(25),
                                  border: const GradientBoxBorder(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color.fromARGB(255, 137, 35, 52),
                                        Color.fromARGB(255, 77, 157, 238),
                                      ],
                                    ),
                                    width: 7,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: MediaQuery.of(context).size.width / 10,
                  bottom: MediaQuery.of(context).size.height / 100,
                  child: BannerAd(
                    'd2bc161a-a03c-4bba-887e-de2eebf3a332',
                    BannerAdSize.BANNER,
                    onAdLoaded: (ad) {},
                    onAdClicked: (ad) {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
