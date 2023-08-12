import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:adivery/adivery.dart';
// import 'package:adivery/adivery_ads.dart';

void main() => runApp(AboutScreen());

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  // void initState() {
  //   super.initState();
  //   AdiveryPlugin.initialize('57843ada-fcb1-446a-9494-b472af68408f');
  // }

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
            fontSize: 40,
            // fontWeight: FontWeight.bold,
            fontFamily: 'IRAN',
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
            top: 0,
            child: Stack(
              children: [
                Text(
                  'Hello, I am Amir Khosravi 🖐️😎',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'IRAN',
                    fontSize: 30,
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
                    fontFamily: 'IRAN',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 10,
            top: 105,
            child: Stack(
              children: [
                Text(
                  'I hope you enjoyed this program ❤️😍',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'IRAN',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            left: 160,
            top: 160,
            child: Stack(
              children: [
                Text(
                  '🖐️😎سلام من امیر خسروی هستم',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'IRAN',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 50,
            top: 200,
            child: Stack(
              children: [
                Text(
                  '💻📲من سازنده و توسعه دهنده این اپلیکیشن هستم',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'IRAN',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 110,
            top: 240,
            child: Stack(
              children: [
                Text(
                  '❤️😍امیدوارم که از این بـازی لذت ببرید',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'IRAN',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: _launchURLInstagram,
                      child: Image(
                        width: 70,
                        height: 70,
                        image: AssetImage('images/instagram.png'),
                      ),
                    ),
                    InkWell(
                      onTap: _launchURLGitHub,
                      child: Image(
                        width: 70,
                        height: 70,
                        image: AssetImage('images/github.png'),
                      ),
                    ),
                    InkWell(
                      onTap: _launchURLLinkedIn,
                      child: Image(
                        width: 70,
                        height: 70,
                        image: AssetImage('images/linkedin.png'),
                      ),
                    ),
                    InkWell(
                      onTap: _launchURLTelegram,
                      child: Image(
                        width: 70,
                        height: 70,
                        image: AssetImage('images/telegram.png'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          ///
          ////
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
                left: 30,
                top: 590,
                child: Column(
                  children: [
                    Text(
                      'من را در شبکه های مجازی دنبال کنید',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'IRAN',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'و نظرات و پیشنهدات خودرا\n   برای من ارسال کنید',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'IRAN',
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'از حسن انتخاب شما\n    سپساسگذاریم',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'IRAN',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // Stack(
          //   children: [
          //     Positioned(
          //       right: MediaQuery.of(context).size.width / 10,
          //       bottom: MediaQuery.of(context).size.height / 100,
          //       child: BannerAd(
          //         'd2bc161a-a03c-4bba-887e-de2eebf3a332',
          //         BannerAdSize.BANNER,
          //         onAdLoaded: (ad) {},
          //         onAdClicked: (ad) {},
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}

void _launchURLInstagram() async {
  const url = 'https://www.instagram.com/amirkhosrwiy';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void _launchURLTelegram() async {
  const url = "https://t.me/expert_flutter_khosrwy/";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void _launchURLLinkedIn() async {
  const url = "https://www.linkedin.com/in/amir-khosravi-0bb66a277/";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void _launchURLGitHub() async {
  const url = "https://github.com/amirkhosrwiy";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
