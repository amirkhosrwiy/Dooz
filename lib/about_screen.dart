import 'package:application_dooz/flash.dart';
import 'package:application_dooz/utils.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('AboutScreen.title'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildButton(
                text: 'Open Click',
                onClicked: () => Utils.openLink(
                    url: 'https://www.instagram.com/amirkhosrwiy/'),
              ),
              buildButton(
                text: 'Open Email',
                onClicked: () => Utils.openEmail(
                  toEmail: 'amirkhosravi14001385@gmail.com',
                  subject: 'Hello World',
                  body: 'This Work Great!',
                ),
              ),
              Container(
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext Context) {
                        return FlashMessageScreen();
                      }),
                    );
                  },
                  child: Text('Click Me'),
                ),
              ),
            ],
          ),
        ),
      );

  Widget buildButton({
    required String text,
    required VoidCallback onClicked,
  }) =>
      Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: TextButton(
              onPressed: onClicked,
              child: Text(
                'text',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
        ],
      );
}
