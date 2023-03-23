import 'package:application_dooz/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';

class SelectionGameScreen extends StatelessWidget {
  const SelectionGameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainPageState();
  }
}

class MainPageState extends StatefulWidget {
  const MainPageState({super.key});

  @override
  State<MainPageState> createState() => _MainPageStateState();
}

class _MainPageStateState extends State<MainPageState> {
  bool isPlaying = false;
  final controler = ConfettiController();

  @override
  void initState() {
    super.initState();

    controler.addListener(() {
      setState(() {
        isPlaying = controler.state == ConfettiControllerState.playing;
      });
    });
  }

  @override
  void dispose() {
    controler.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Stack(
        alignment: Alignment.center,
        children: [
          Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              title: const Text('amir Widget'),
            ),
            body: Center(
              child: ElevatedButton(
                child: Text(isPlaying ? 'Stop' : 'Celebrate'),
                onPressed: () {
                  if (isPlaying) {
                    controler.stop();
                  } else {
                    controler.play();
                  }
                },
              ),
            ),
          ),
          ConfettiWidget(
            confettiController: controler,
            shouldLoop: true,
          ),
        ],
      );
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
