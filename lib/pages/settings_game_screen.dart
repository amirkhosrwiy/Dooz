import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

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
          padding: const EdgeInsets.only(left: 65),
          child: Text(
            'Settings',
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
      body: Container(),
    );
  }
}
