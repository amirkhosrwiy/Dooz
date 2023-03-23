import 'package:application_dooz/screens/home_screen.dart';
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
      body: Center(
        child: ElevatedButton(
          child: Text('Click'),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext Context) {
              return Home();
            }));
          },
        ),
      ),
    );
  }
}
