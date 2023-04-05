import 'package:flutter/material.dart';

class Home2 extends StatelessWidget {
  const Home2({super.key});

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
            padding: const EdgeInsets.only(left: 50),
            child: Text(
              'Dooz 6*7',
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
          alignment: Alignment.center,
          padding: EdgeInsets.all(20),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/wall.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 77, 157, 238),
              shadowColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0),
              ),
            ),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'کلیک کنید',
                style: TextStyle(
                  fontFamily: 'DB',
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ),
      );
}
