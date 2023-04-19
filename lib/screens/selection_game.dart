import 'package:application_dooz/screens/home2_screen.dart';
import 'package:application_dooz/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

class SelectionGameScreen extends StatelessWidget {
  const SelectionGameScreen({super.key});

  @override
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
              'دوز',
              style: TextStyle(
                shadows: [
                  Shadow(
                    blurRadius: 30.0, // shadow blur
                    color: Colors.grey.shade300, // shadow color
                    offset: Offset(3.0, 2.0), // how much shadow will be shown
                  ),
                ],
                color: Colors.white,
                fontSize: 40,
                // fontWeight: FontWeight.bold,
                fontFamily: 'QT',
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
                  Color(0xff0096FF),
                  Color(0xff1A1D27),
                  Color(0xff1A1D27),
                  Color(0xff00D7FF),
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
              image: AssetImage('images/jm.png'),
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
                              '            به دوز   3 در 3   خوش آمدید',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'QT',
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
                            image: AssetImage('images/33.jpg'),
                          ),
                          borderRadius: BorderRadius.circular(25),
                          border: const GradientBoxBorder(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xff0096FF),
                                Color(0xff00D7FF),
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
                                      '            به دوز   6 در 7   خوش آمدید',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontFamily: 'QT',
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
                                    image: AssetImage('images/67.jpg'),
                                  ),
                                  borderRadius: BorderRadius.circular(25),
                                  border: const GradientBoxBorder(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xff0096FF),
                                        Color(0xff00D7FF),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
