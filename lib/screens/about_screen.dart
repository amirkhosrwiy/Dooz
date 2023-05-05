import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(AboutScreen());

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
          padding: const EdgeInsets.only(left: 75, bottom: 10),
          child: Text(
            'درباره ما',
            style: TextStyle(
              shadows: [
                Shadow(
                  blurRadius: 30.0, // shadow blur
                  color: Colors.grey.shade300, // shadow color
                  offset: Offset(3.0, 2.0), // how much shadow will be shown
                ),
              ],
              color: Colors.white,
              fontSize: 30,
              // fontWeight: FontWeight.bold,
              fontFamily: 'QT',
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
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/wall.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            left: 10,
            top: 10,
            child: Stack(
              children: [
                Text(
                  'Hello, I am Amir Khosravi 🖐️😎',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'QT',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 10,
            top: 40,
            child: Stack(
              children: [
                Text(
                  'I am the creator and developer\nof this application 💻📲',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'QT',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 10,
            top: 90,
            child: Stack(
              children: [
                Text(
                  'I hope you enjoyed this program ❤️😍',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'QT',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 120,
            top: 150,
            child: Stack(
              children: [
                Text(
                  '🖐️😎سلام من امیر خسروی هستم',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'QT',
                    fontSize: 17.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 170,
            top: 180,
            child: Stack(
              children: [
                Text(
                  'من سازنده و توسعه دهنده \n 💻📲  این اپلیکیشن هستم',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'QT',
                    fontSize: 17.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 80,
            top: 230,
            child: Stack(
              children: [
                Text(
                  '❤️😍امیدوارم که از این برنامه لذت ببرید',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'QT',
                    fontSize: 17.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          //Launcher 1 Gmail
          Stack(
            children: [
              Positioned(
                left: 175,
                top: 275,
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: _launchURL,
                      child: Text('Launch Gmail'),
                    ),
                    SizedBox(width: 20),
                    Image(
                      image: AssetImage('images/gmail.png'),
                      width: 60,
                      height: 60,
                    ),
                  ],
                ),
              )
            ],
          ),
          //Launcher 2 Instagram
          Stack(
            children: [
              Positioned(
                left: 150,
                top: 350,
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: _launchURL,
                      child: Text('Launch Instagram'),
                    ),
                    SizedBox(width: 20),
                    Image(
                      image: AssetImage('images/instagram.png'),
                      width: 60,
                      height: 60,
                    ),
                  ],
                ),
              ),
            ],
          ),
          //Launcher 3 Telegram
          Stack(
            children: [
              Positioned(
                left: 155,
                top: 425,
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: _launchURL,
                      child: Text('Launch Telegram'),
                    ),
                    SizedBox(width: 20),
                    Image(
                      image: AssetImage('images/telegram.png'),
                      width: 60,
                      height: 60,
                    ),
                  ],
                ),
              )
            ],
          ),
          //Launcher 4 WhatsApp
          Stack(
            children: [
              Positioned(
                left: 150,
                top: 500,
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: _launchURL,
                      child: Text('Launch WhatsApp'),
                    ),
                    SizedBox(width: 20),
                    Image(
                      image: AssetImage('images/whatsapp.png'),
                      width: 60,
                      height: 60,
                    ),
                  ],
                ),
              )
            ],
          ),
          Stack(
            children: [
              Positioned(
                left: 10,
                top: 570,
                child: Image(
                  image: AssetImage('images/chat1.png'),
                  fit: BoxFit.fill,
                  width: 250,
                  height: 150,
                ),
              ),
            ],
          ),

          Stack(
            children: [
              Positioned(
                left: 222,
                top: 550,
                child: Image(
                  image: AssetImage('images/me.png'),
                  width: 200,
                  height: 200,
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Positioned(
                left: 22,
                top: 590,
                child: Column(
                  children: [
                    Text(
                      'من را در شبکه های مجازی دنبال کنید',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'QT',
                        fontSize: 13.5,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'نظرات و پیشنهدات خودرا برای من ارسال کنید',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'QT',
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'از حسن انتخاب شما سپساسگذاریم',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'QT',
                        fontSize: 13.5,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

void _launchURL() async {
  const url = 'https://www.instagram.com/amirkhosrwiy';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
