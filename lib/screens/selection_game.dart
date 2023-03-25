import 'package:flutter/material.dart';

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
          padding: const EdgeInsets.only(left: 80),
          child: Text(
            'Home',
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
      body: Container(),
    );
  }
}
