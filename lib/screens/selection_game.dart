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
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          elevation: 20,
          shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(90),
              bottomRight: Radius.circular(90),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 140),
            child: Text(
              'Dooz',
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
                fontFamily: 'GI',
              ),
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
        backgroundColor: Color.fromARGB(255, 42, 47, 65),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/wall.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Material(
                child: InkWell(
                  highlightColor: Colors.blue.withOpacity(0.5),
                  splashColor: Colors.red.withOpacity(0.5),
                  onTap: () {
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
                            Color.fromARGB(255, 77, 157, 238)
                          ],
                        ),
                        width: 7,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
