import 'package:flutter/material.dart';
import 'package:flame_audio/flame_audio.dart';
// import 'package:adivery/adivery.dart';
// import 'package:adivery/adivery_ads.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isMuted = false;

  @override
  // void initState() {
  //   super.initState();
  //   AdiveryPlugin.initialize('57843ada-fcb1-446a-9494-b472af68408f');
  // }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
            'تنظیمات',
            textAlign: TextAlign.center,
            style: TextStyle(
              shadows: [
                Shadow(
                  blurRadius: 30.0, // shadow blur
                  color: Colors.grey.shade300, // shadow color
                  offset: Offset(3.0, 2.0), // how much shadow will be shown
                ),
              ],
              color: Colors.white,
              fontSize: 50,
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
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'موسیقی پس زمینه',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'IRAN',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 100),
                    FloatingActionButton(
                      child: Text(
                        isMuted ? 'Off' : 'On',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'GI',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          isMuted = !isMuted;
                        });
                        if (isMuted) {
                          FlameAudio.bgm.pause();
                        } else {
                          FlameAudio.bgm.resume();
                        }
                      },
                      backgroundColor:
                          isMuted ? Colors.grey : Colors.blueAccent,
                      elevation: 10,
                    ),
                  ],
                ),
              ),
              // Positioned(
              //   right: MediaQuery.of(context).size.width / 10,
              //   bottom: MediaQuery.of(context).size.height / 100,
              //   child: BannerAd(
              //     'd2bc161a-a03c-4bba-887e-de2eebf3a332',
              //     BannerAdSize.BANNER,
              //     onAdLoaded: (ad) {},
              //     onAdClicked: (ad) {},
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
