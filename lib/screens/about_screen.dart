import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(90),
            bottomRight: Radius.circular(90),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 55),
          child: Text(
            'About Me',
            style: TextStyle(
              shadows: [
                Shadow(
                  blurRadius: 30.0, // shadow blur
                  color: Colors.grey.shade300, // shadow color
                  offset: Offset(3.0, 2.0), // how much shadow will be shown
                ),
              ],
              color: Colors.white,
              fontSize: 35,
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
      backgroundColor: Color.fromARGB(255, 33, 39, 58),
      body: Center(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/wall.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 105),
                    child: Text(
                      '■ Hello, I am Amir Khosrwiy',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17.5,
                          fontFamily: 'GI'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(
                      '■ My profession is mobile development',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.5,
                        fontFamily: 'GI',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
