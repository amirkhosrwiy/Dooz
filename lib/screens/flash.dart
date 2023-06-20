import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FlashMessageScreen extends StatelessWidget {
  const FlashMessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 20,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(90),
            bottomRight: Radius.circular(90),
          ),
        ),
        title: Text(
          'حمایت از ما',
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
            fontFamily: 'IRAN',
          ),
          textAlign: TextAlign.center,
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
                  image: AssetImage('images/wall.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
