import 'dart:math';

import 'package:application_dooz/widget/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _HomeState2();
}

class _HomeState2 extends State<Home2> {
  bool isTurnO = true;

  List<String> xOrOList = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
  ];

  int filledBoxes = 0;

  bool GameHasResult = false;

  bool isPlaying = false;

  int scoreX = 0;
  int scoreO = 0;
  String winnerTitle = '';

  late ConfettiController _controller3;
  late ConfettiController _controller4;

  @override
  void dispose() {
    super.dispose();
    _controller3.dispose();
    _controller4.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller3 =
        ConfettiController(duration: const Duration(microseconds: 1000));
    _controller4 =
        ConfettiController(duration: const Duration(microseconds: 1000));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Scaffold(
          drawer: NavigationDrawerWidget(),
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              ' دووز ',
              style: TextStyle(
                shadows: [
                  Shadow(
                    blurRadius: 25, // shadow blur
                    color: Colors.white, // shadow color
                    offset: Offset(3.0, 2.0), // how much shadow will be shown
                  ),
                ],
                color: Colors.white,
                // fontFamily:
                fontSize: 60,
                // fontWeight: FontWeight.bold,
                fontFamily: 'IRAN',
              ),
              textAlign: TextAlign.center,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: IconButton(
                  onPressed: () {
                    clearGame();

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          "صفحه دوز شما آماده بازی است  \n برای از سرگیری، بازی مجدد را انتخاب کنید",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'IRAN',
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                blurRadius: 30.0, // shadow blur
                                color: Colors.grey.shade300, // shadow color
                                offset: Offset(
                                    3.0, 2.0), // how much shadow will be shown
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                        backgroundColor: Color.fromARGB(255, 36, 42, 61),
                      ),
                    );
                  },
                  icon: Icon(Icons.refresh),
                  color: Colors.white,
                  iconSize: 30,
                ),
              ),
              //
              //
              //
            ],
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
            elevation: 20,
          ),
          backgroundColor: Color.fromARGB(255, 42, 47, 65),
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/wall.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  getScoreBoard(),
                  SizedBox(height: 10),
                  getGridView(),

                  // SizedBox(height: 10),
                  getResultButton(),

                  getTurn(),
                ],
              ),
            ),
          ),
        ),
        ConfettiWidget(
          confettiController: _controller3,
          blastDirection: pi / 2,
          emissionFrequency: 0.08,
          numberOfParticles: 80,
          gravity: 0.01,
          particleDrag: 0.02,
          colors: [
            Color(0xffE23E58),
          ],
        ),
        ConfettiWidget(
          confettiController: _controller4,
          blastDirection: pi / 2,
          emissionFrequency: 0.08,
          numberOfParticles: 80,
          gravity: 0.01,
          particleDrag: 0.02,
          colors: [
            Color(0xff30CCFF),
          ],
        ),
      ],
    );
  }

  Widget getResultButton() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Visibility(
        visible: GameHasResult,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            backgroundColor: Color(0xff1A1D27),
            side: BorderSide(
              color: Color(0xffFFFFFF),
              width: 5,
            ),
          ),
          onPressed: () {
            setState(
              () {
                GameHasResult = false;
                clearGame();
                //FlashMessageScreen()
                //FlashMessageScreen()
                //FlashMessageScreen()
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      "صفحه دوز شما آماده بازی است  \n برای از سرگیری، بازی مجدد را انتخاب کنید",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'IRAN',
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            blurRadius: 30.0, // shadow blur
                            color: Colors.grey.shade300, // shadow color
                            offset: Offset(
                                3.0, 2.0), // how much shadow will be shown
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    backgroundColor: Color.fromARGB(255, 36, 42, 61),
                  ),
                );
              },
            );
          },

          // ),
          child: Container(
            width: 250,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[
                  Color(0xff1A1D27),
                  Color(0xff1A1D27),
                ],
              ),
            ),
            child: Center(
              child: Text(
                ' $winnerTitle  بازی مجدد ',
                style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'IRAN',
                  shadows: [
                    Shadow(
                      blurRadius: 15, // shadow blur
                      color: Colors.grey.shade300, // shadow color
                      offset: Offset(3.0, 2.0), // how much shadow will be shown
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget getTurn() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Container(
        width: 170,
        height: 60,
        child: Center(
          child: Text(
            isTurnO ? 'O نوبت' : 'X نوبت',
            style: TextStyle(
              fontFamily: 'IRAN',
              shadows: [
                Shadow(
                  blurRadius: 20.0, // shadow blur
                  color: Colors.white, // shadow color
                  offset: Offset(4.0, 4.0), // how much shadow will be shown
                ),
              ],
              color: Colors.white,
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xff1A1D27).withOpacity(0.1),
              isTurnO ? Color(0xffE23E58) : Color(0xff30CCFF),
            ],
            stops: [0.1, 0.9],
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }

  Widget getGridView() {
    return Expanded(
      child: GridView.builder(
        itemCount: 42,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 7,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              tapped(index);
            },
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(
                  color: xOrOList[index] == 'X'
                      ? Color(0xff30CCFF)
                      : xOrOList[index] == 'O'
                          ? Color(0xffE23E58)
                          : Color(0xffFFFFFF),
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 12, top: 7),
                child: Text(
                  xOrOList[index],
                  style: TextStyle(
                    fontSize: 50,
                    fontFamily: 'GI',
                    fontWeight: FontWeight.bold,
                    color: xOrOList[index] == 'X'
                        ? Color(0xff30CCFF)
                        : Color(0xffE23E58),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void tapped(int index) {
    if (GameHasResult) {
      return;
    }
    print('$index');
    setState(() {
      if (xOrOList[index] != '') {
        return;
      }

      if (isTurnO) {
        xOrOList[index] = 'O';
        filledBoxes = filledBoxes + 1;
      } else {
        xOrOList[index] = 'X';
        filledBoxes = filledBoxes + 1;
      }
      isTurnO = !isTurnO;

      checkWineer();
    });
  }

  void checkWineer() {
    if (xOrOList[0] == xOrOList[1] &&
        xOrOList[0] == xOrOList[2] &&
        xOrOList[0] == xOrOList[3] &&
        xOrOList[0] != '') {
      setResult(xOrOList[0], 'برنده شد   ' + xOrOList[0]);
      return;
    }

    if (xOrOList[1] == xOrOList[2] &&
        xOrOList[1] == xOrOList[3] &&
        xOrOList[1] == xOrOList[4] &&
        xOrOList[1] != '') {
      setResult(xOrOList[3], 'برنده شد   ' + xOrOList[3]);
      return;
    }

    if (xOrOList[2] == xOrOList[3] &&
        xOrOList[2] == xOrOList[4] &&
        xOrOList[2] == xOrOList[5] &&
        xOrOList[2] != '') {
      setResult(xOrOList[2], 'برنده شد   ' + xOrOList[2]);
      return;
    }

    if (xOrOList[3] == xOrOList[4] &&
        xOrOList[3] == xOrOList[5] &&
        xOrOList[3] == xOrOList[6] &&
        xOrOList[3] != '') {
      setResult(xOrOList[3], 'برنده شد   ' + xOrOList[3]);
      return;
    }

    if (xOrOList[7] == xOrOList[8] &&
        xOrOList[7] == xOrOList[9] &&
        xOrOList[7] == xOrOList[10] &&
        xOrOList[7] != '') {
      setResult(xOrOList[7], 'برنده شد   ' + xOrOList[7]);
      return;
    }

    if (xOrOList[8] == xOrOList[9] &&
        xOrOList[8] == xOrOList[10] &&
        xOrOList[8] == xOrOList[11] &&
        xOrOList[8] != '') {
      setResult(xOrOList[8], 'برنده شد   ' + xOrOList[8]);
      return;
    }

    if (xOrOList[9] == xOrOList[10] &&
        xOrOList[9] == xOrOList[11] &&
        xOrOList[9] == xOrOList[12] &&
        xOrOList[9] != '') {
      setResult(xOrOList[9], 'برنده شد   ' + xOrOList[9]);
      return;
    }

    if (xOrOList[10] == xOrOList[11] &&
        xOrOList[10] == xOrOList[12] &&
        xOrOList[10] == xOrOList[13] &&
        xOrOList[10] != '') {
      setResult(xOrOList[10], 'برنده شد   ' + xOrOList[10]);
      return;
    }

    if (xOrOList[14] == xOrOList[15] &&
        xOrOList[14] == xOrOList[16] &&
        xOrOList[14] == xOrOList[17] &&
        xOrOList[14] != '') {
      setResult(xOrOList[14], 'برنده شد   ' + xOrOList[14]);
      return;
    }

    if (xOrOList[15] == xOrOList[16] &&
        xOrOList[15] == xOrOList[17] &&
        xOrOList[15] == xOrOList[18] &&
        xOrOList[15] != '') {
      setResult(xOrOList[15], 'برنده شد   ' + xOrOList[15]);
      return;
    }

    if (xOrOList[16] == xOrOList[17] &&
        xOrOList[16] == xOrOList[18] &&
        xOrOList[16] == xOrOList[19] &&
        xOrOList[16] != '') {
      setResult(xOrOList[16], 'برنده شد   ' + xOrOList[16]);
      return;
    }

    if (xOrOList[17] == xOrOList[18] &&
        xOrOList[17] == xOrOList[19] &&
        xOrOList[17] == xOrOList[20] &&
        xOrOList[17] != '') {
      setResult(xOrOList[17], 'برنده شد   ' + xOrOList[17]);
      return;
    }

    if (xOrOList[21] == xOrOList[22] &&
        xOrOList[21] == xOrOList[23] &&
        xOrOList[21] == xOrOList[24] &&
        xOrOList[21] != '') {
      setResult(xOrOList[21], 'برنده شد   ' + xOrOList[21]);
      return;
    }

    if (xOrOList[22] == xOrOList[23] &&
        xOrOList[22] == xOrOList[24] &&
        xOrOList[22] == xOrOList[25] &&
        xOrOList[22] != '') {
      setResult(xOrOList[22], 'برنده شد   ' + xOrOList[22]);
      return;
    }

    if (xOrOList[23] == xOrOList[24] &&
        xOrOList[23] == xOrOList[25] &&
        xOrOList[23] == xOrOList[26] &&
        xOrOList[23] != '') {
      setResult(xOrOList[23], 'برنده شد   ' + xOrOList[23]);
      return;
    }

    if (xOrOList[24] == xOrOList[25] &&
        xOrOList[24] == xOrOList[26] &&
        xOrOList[24] == xOrOList[27] &&
        xOrOList[24] != '') {
      setResult(xOrOList[24], 'برنده شد   ' + xOrOList[24]);
      return;
    }

    if (xOrOList[28] == xOrOList[29] &&
        xOrOList[28] == xOrOList[30] &&
        xOrOList[28] == xOrOList[31] &&
        xOrOList[28] != '') {
      setResult(xOrOList[28], 'برنده شد   ' + xOrOList[28]);
      return;
    }

    if (xOrOList[29] == xOrOList[30] &&
        xOrOList[29] == xOrOList[31] &&
        xOrOList[29] == xOrOList[32] &&
        xOrOList[29] != '') {
      setResult(xOrOList[29], 'برنده شد   ' + xOrOList[29]);
      return;
    }

    if (xOrOList[30] == xOrOList[31] &&
        xOrOList[30] == xOrOList[32] &&
        xOrOList[30] == xOrOList[33] &&
        xOrOList[30] != '') {
      setResult(xOrOList[30], 'برنده شد   ' + xOrOList[30]);
      return;
    }

    if (xOrOList[31] == xOrOList[32] &&
        xOrOList[31] == xOrOList[33] &&
        xOrOList[31] == xOrOList[34] &&
        xOrOList[31] != '') {
      setResult(xOrOList[31], 'برنده شد   ' + xOrOList[31]);
      return;
    }

    if (xOrOList[35] == xOrOList[36] &&
        xOrOList[35] == xOrOList[37] &&
        xOrOList[35] == xOrOList[38] &&
        xOrOList[35] != '') {
      setResult(xOrOList[35], 'برنده شد   ' + xOrOList[35]);
      return;
    }

    if (xOrOList[36] == xOrOList[37] &&
        xOrOList[36] == xOrOList[38] &&
        xOrOList[36] == xOrOList[39] &&
        xOrOList[36] != '') {
      setResult(xOrOList[36], 'برنده شد   ' + xOrOList[36]);
      return;
    }

    if (xOrOList[37] == xOrOList[38] &&
        xOrOList[37] == xOrOList[39] &&
        xOrOList[37] == xOrOList[40] &&
        xOrOList[37] != '') {
      setResult(xOrOList[37], 'برنده شد   ' + xOrOList[37]);
      return;
    }

    if (xOrOList[38] == xOrOList[39] &&
        xOrOList[38] == xOrOList[40] &&
        xOrOList[38] == xOrOList[41] &&
        xOrOList[38] != '') {
      setResult(xOrOList[38], 'برنده شد   ' + xOrOList[38]);
      return;
    }

    if (xOrOList[0] == xOrOList[7] &&
        xOrOList[0] == xOrOList[14] &&
        xOrOList[0] == xOrOList[21] &&
        xOrOList[0] != '') {
      setResult(xOrOList[0], 'برنده شد   ' + xOrOList[0]);
      return;
    }

    if (xOrOList[1] == xOrOList[8] &&
        xOrOList[1] == xOrOList[15] &&
        xOrOList[1] == xOrOList[22] &&
        xOrOList[1] != '') {
      setResult(xOrOList[1], 'برنده شد   ' + xOrOList[1]);
      return;
    }

    if (xOrOList[2] == xOrOList[9] &&
        xOrOList[2] == xOrOList[16] &&
        xOrOList[2] == xOrOList[23] &&
        xOrOList[2] != '') {
      setResult(xOrOList[2], 'برنده شد   ' + xOrOList[2]);
      return;
    }

    if (xOrOList[3] == xOrOList[10] &&
        xOrOList[3] == xOrOList[17] &&
        xOrOList[3] == xOrOList[24] &&
        xOrOList[3] != '') {
      setResult(xOrOList[3], 'برنده شد   ' + xOrOList[3]);
      return;
    }

    if (xOrOList[4] == xOrOList[11] &&
        xOrOList[4] == xOrOList[18] &&
        xOrOList[4] == xOrOList[25] &&
        xOrOList[4] != '') {
      setResult(xOrOList[4], 'برنده شد   ' + xOrOList[4]);
      return;
    }

    if (xOrOList[5] == xOrOList[12] &&
        xOrOList[5] == xOrOList[19] &&
        xOrOList[5] == xOrOList[26] &&
        xOrOList[5] != '') {
      setResult(xOrOList[5], 'برنده شد   ' + xOrOList[5]);
      return;
    }

    if (xOrOList[6] == xOrOList[13] &&
        xOrOList[6] == xOrOList[20] &&
        xOrOList[6] == xOrOList[27] &&
        xOrOList[6] != '') {
      setResult(xOrOList[6], 'برنده شد   ' + xOrOList[6]);
      return;
    }

    if (xOrOList[7] == xOrOList[14] &&
        xOrOList[7] == xOrOList[21] &&
        xOrOList[7] == xOrOList[28] &&
        xOrOList[7] != '') {
      setResult(xOrOList[7], 'برنده شد   ' + xOrOList[7]);
      return;
    }

    if (xOrOList[8] == xOrOList[15] &&
        xOrOList[8] == xOrOList[22] &&
        xOrOList[8] == xOrOList[29] &&
        xOrOList[8] != '') {
      setResult(xOrOList[8], 'برنده شد   ' + xOrOList[8]);
      return;
    }

    if (xOrOList[9] == xOrOList[16] &&
        xOrOList[9] == xOrOList[23] &&
        xOrOList[9] == xOrOList[30] &&
        xOrOList[9] != '') {
      setResult(xOrOList[9], 'برنده شد   ' + xOrOList[9]);
      return;
    }

    if (xOrOList[10] == xOrOList[17] &&
        xOrOList[10] == xOrOList[24] &&
        xOrOList[10] == xOrOList[31] &&
        xOrOList[10] != '') {
      setResult(xOrOList[10], 'برنده شد   ' + xOrOList[10]);
      return;
    }

    if (xOrOList[11] == xOrOList[18] &&
        xOrOList[11] == xOrOList[25] &&
        xOrOList[11] == xOrOList[32] &&
        xOrOList[11] != '') {
      setResult(xOrOList[11], 'برنده شد   ' + xOrOList[11]);
      return;
    }

    if (xOrOList[12] == xOrOList[19] &&
        xOrOList[12] == xOrOList[26] &&
        xOrOList[12] == xOrOList[33] &&
        xOrOList[12] != '') {
      setResult(xOrOList[12], 'برنده شد   ' + xOrOList[12]);
      return;
    }

    if (xOrOList[13] == xOrOList[20] &&
        xOrOList[13] == xOrOList[27] &&
        xOrOList[13] == xOrOList[34] &&
        xOrOList[13] != '') {
      setResult(xOrOList[13], 'برنده شد   ' + xOrOList[13]);
      return;
    }

    if (xOrOList[14] == xOrOList[21] &&
        xOrOList[14] == xOrOList[28] &&
        xOrOList[14] == xOrOList[35] &&
        xOrOList[14] != '') {
      setResult(xOrOList[14], 'برنده شد   ' + xOrOList[14]);
      return;
    }

    if (xOrOList[15] == xOrOList[22] &&
        xOrOList[15] == xOrOList[29] &&
        xOrOList[15] == xOrOList[36] &&
        xOrOList[15] != '') {
      setResult(xOrOList[15], 'برنده شد   ' + xOrOList[15]);
      return;
    }

    if (xOrOList[16] == xOrOList[23] &&
        xOrOList[16] == xOrOList[30] &&
        xOrOList[16] == xOrOList[37] &&
        xOrOList[16] != '') {
      setResult(xOrOList[16], 'برنده شد   ' + xOrOList[16]);
      return;
    }

    if (xOrOList[17] == xOrOList[24] &&
        xOrOList[17] == xOrOList[31] &&
        xOrOList[17] == xOrOList[38] &&
        xOrOList[17] != '') {
      setResult(xOrOList[17], 'برنده شد   ' + xOrOList[17]);
      return;
    }

    if (xOrOList[18] == xOrOList[25] &&
        xOrOList[18] == xOrOList[32] &&
        xOrOList[18] == xOrOList[39] &&
        xOrOList[18] != '') {
      setResult(xOrOList[18], 'برنده شد   ' + xOrOList[18]);
      return;
    }

    if (xOrOList[19] == xOrOList[26] &&
        xOrOList[19] == xOrOList[33] &&
        xOrOList[19] == xOrOList[40] &&
        xOrOList[19] != '') {
      setResult(xOrOList[19], 'برنده شد   ' + xOrOList[19]);
      return;
    }

    if (xOrOList[20] == xOrOList[27] &&
        xOrOList[20] == xOrOList[34] &&
        xOrOList[20] == xOrOList[41] &&
        xOrOList[20] != '') {
      setResult(xOrOList[20], 'برنده شد   ' + xOrOList[20]);
      return;
    }

    if (xOrOList[0] == xOrOList[8] &&
        xOrOList[0] == xOrOList[16] &&
        xOrOList[0] == xOrOList[24] &&
        xOrOList[0] != '') {
      setResult(xOrOList[0], 'برنده شد   ' + xOrOList[0]);
      return;
    }

    if (xOrOList[8] == xOrOList[16] &&
        xOrOList[8] == xOrOList[24] &&
        xOrOList[8] == xOrOList[32] &&
        xOrOList[8] != '') {
      setResult(xOrOList[8], 'برنده شد   ' + xOrOList[8]);
      return;
    }

    if (xOrOList[16] == xOrOList[24] &&
        xOrOList[16] == xOrOList[32] &&
        xOrOList[16] == xOrOList[40] &&
        xOrOList[16] != '') {
      setResult(xOrOList[16], 'برنده شد   ' + xOrOList[16]);
      return;
    }

    if (xOrOList[1] == xOrOList[9] &&
        xOrOList[1] == xOrOList[17] &&
        xOrOList[1] == xOrOList[25] &&
        xOrOList[1] != '') {
      setResult(xOrOList[1], 'برنده شد   ' + xOrOList[1]);
      return;
    }

    if (xOrOList[9] == xOrOList[17] &&
        xOrOList[9] == xOrOList[25] &&
        xOrOList[9] == xOrOList[33] &&
        xOrOList[9] != '') {
      setResult(xOrOList[9], 'برنده شد   ' + xOrOList[9]);
      return;
    }

    if (xOrOList[17] == xOrOList[25] &&
        xOrOList[17] == xOrOList[33] &&
        xOrOList[17] == xOrOList[41] &&
        xOrOList[17] != '') {
      setResult(xOrOList[17], 'برنده شد   ' + xOrOList[17]);
      return;
    }

    if (xOrOList[2] == xOrOList[10] &&
        xOrOList[2] == xOrOList[18] &&
        xOrOList[2] == xOrOList[26] &&
        xOrOList[2] != '') {
      setResult(xOrOList[2], 'برنده شد   ' + xOrOList[2]);
      return;
    }

    if (xOrOList[10] == xOrOList[18] &&
        xOrOList[10] == xOrOList[26] &&
        xOrOList[10] == xOrOList[34] &&
        xOrOList[10] != '') {
      setResult(xOrOList[10], 'برنده شد   ' + xOrOList[10]);
      return;
    }

    if (xOrOList[14] == xOrOList[22] &&
        xOrOList[14] == xOrOList[30] &&
        xOrOList[14] == xOrOList[38] &&
        xOrOList[14] != '') {
      setResult(xOrOList[14], 'برنده شد   ' + xOrOList[14]);
      return;
    }

    if (xOrOList[3] == xOrOList[11] &&
        xOrOList[3] == xOrOList[19] &&
        xOrOList[3] == xOrOList[27] &&
        xOrOList[3] != '') {
      setResult(xOrOList[3], 'برنده شد   ' + xOrOList[3]);
      return;
    }

    if (xOrOList[7] == xOrOList[15] &&
        xOrOList[7] == xOrOList[23] &&
        xOrOList[7] == xOrOList[31] &&
        xOrOList[7] != '') {
      setResult(xOrOList[7], 'برنده شد   ' + xOrOList[7]);
      return;
    }

    if (xOrOList[15] == xOrOList[23] &&
        xOrOList[15] == xOrOList[31] &&
        xOrOList[15] == xOrOList[39] &&
        xOrOList[15] != '') {
      setResult(xOrOList[15], 'برنده شد   ' + xOrOList[15]);
      return;
    }

    if (xOrOList[6] == xOrOList[12] &&
        xOrOList[6] == xOrOList[18] &&
        xOrOList[6] == xOrOList[24] &&
        xOrOList[6] != '') {
      setResult(xOrOList[6], 'برنده شد   ' + xOrOList[6]);
      return;
    }

    if (xOrOList[12] == xOrOList[18] &&
        xOrOList[12] == xOrOList[24] &&
        xOrOList[12] == xOrOList[30] &&
        xOrOList[12] != '') {
      setResult(xOrOList[12], 'برنده شد   ' + xOrOList[12]);
      return;
    }

    if (xOrOList[18] == xOrOList[24] &&
        xOrOList[18] == xOrOList[30] &&
        xOrOList[18] == xOrOList[36] &&
        xOrOList[18] != '') {
      setResult(xOrOList[18], 'برنده شد   ' + xOrOList[18]);
      return;
    }

    if (xOrOList[5] == xOrOList[11] &&
        xOrOList[5] == xOrOList[17] &&
        xOrOList[5] == xOrOList[23] &&
        xOrOList[5] != '') {
      setResult(xOrOList[5], 'برنده شد   ' + xOrOList[5]);
      return;
    }

    if (xOrOList[11] == xOrOList[17] &&
        xOrOList[11] == xOrOList[23] &&
        xOrOList[11] == xOrOList[29] &&
        xOrOList[11] != '') {
      setResult(xOrOList[11], 'برنده شد   ' + xOrOList[11]);
      return;
    }

    if (xOrOList[17] == xOrOList[23] &&
        xOrOList[17] == xOrOList[29] &&
        xOrOList[17] == xOrOList[35] &&
        xOrOList[17] != '') {
      setResult(xOrOList[17], 'برنده شد   ' + xOrOList[17]);
      return;
    }

    if (xOrOList[4] == xOrOList[10] &&
        xOrOList[4] == xOrOList[16] &&
        xOrOList[4] == xOrOList[22] &&
        xOrOList[4] != '') {
      setResult(xOrOList[4], 'برنده شد   ' + xOrOList[2]);
      return;
    }

    if (xOrOList[10] == xOrOList[16] &&
        xOrOList[10] == xOrOList[22] &&
        xOrOList[10] == xOrOList[28] &&
        xOrOList[10] != '') {
      setResult(xOrOList[10], 'برنده شد   ' + xOrOList[10]);
      return;
    }

    if (xOrOList[3] == xOrOList[9] &&
        xOrOList[3] == xOrOList[15] &&
        xOrOList[3] == xOrOList[21] &&
        xOrOList[3] != '') {
      setResult(xOrOList[3], 'برنده شد   ' + xOrOList[3]);
      return;
    }

    if (xOrOList[13] == xOrOList[19] &&
        xOrOList[13] == xOrOList[25] &&
        xOrOList[13] == xOrOList[31] &&
        xOrOList[13] != '') {
      setResult(xOrOList[13], 'برنده شد   ' + xOrOList[13]);
      return;
    }

    if (xOrOList[19] == xOrOList[25] &&
        xOrOList[19] == xOrOList[31] &&
        xOrOList[19] == xOrOList[37] &&
        xOrOList[19] != '') {
      setResult(xOrOList[19], 'برنده شد   ' + xOrOList[19]);
      return;
    }

    if (xOrOList[20] == xOrOList[26] &&
        xOrOList[20] == xOrOList[32] &&
        xOrOList[20] == xOrOList[38] &&
        xOrOList[20] != '') {
      setResult(xOrOList[20], 'برنده شد   ' + xOrOList[20]);
      return;
    }

    if (filledBoxes == 42) {
      setResult('', 'مساوی');
    }
  }

  Widget getScoreBoard() {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 120,
                  height: 40,
                  child: Center(
                    child: Text(
                      'O بازیکن',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'IRAN',
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            blurRadius: 10.0, // shadow blur
                            color: Colors.white, // shadow color
                            offset: Offset(
                                2.0, 2.0), // how much shadow will be shown
                          ),
                        ],
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xff1A1D27).withOpacity(0.1),
                          Color(0xffE23E58),
                        ],
                        stops: [
                          0.1,
                          0.9
                        ]),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  width: 50,
                  height: 50,
                  child: Center(
                    child: Text(
                      '$scoreO',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontFamily: 'GI',
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            blurRadius: 20.0, // shadow blur
                            color: Colors.white, // shadow color
                            offset: Offset(
                                2.0, 2.0), // how much shadow will be shown
                          ),
                        ],
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xffE23E58),
                          Color.fromARGB(255, 54, 12, 18).withOpacity(0.5),
                        ],
                        stops: [
                          0.1,
                          0.9
                        ]),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 120,
                  height: 40,
                  child: Center(
                    child: Text(
                      'X بازیکن',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'IRAN',
                        shadows: [
                          Shadow(
                            blurRadius: 10.0, // shadow blur
                            color: Colors.white, // shadow color
                            offset: Offset(
                                2.0, 2.0), // how much shadow will be shown
                          ),
                        ],
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xff1A1D27).withOpacity(0.1),
                          Color(0xff30CCFF),
                        ],
                        stops: [
                          0.1,
                          0.9
                        ]),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  width: 50,
                  height: 50,
                  child: Center(
                    child: Text(
                      '$scoreX',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontFamily: 'GI',
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            blurRadius: 10.0, // shadow blur
                            color: Color(0xff30CCFF), // shadow color
                            offset: Offset(
                                2.0, 2.0), // how much shadow will be shown
                          ),
                        ],
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xff30CCFF),
                          Color.fromARGB(255, 14, 57, 71).withOpacity(0.5),
                        ],
                        stops: [
                          0.2,
                          0.7
                        ]),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void setResult(String winner, String title) {
    setState(
      () {
        GameHasResult = true;
        winnerTitle = title;

        if (winner == 'X') {
          scoreX = scoreX + 1;
          _controller4.play();
        } else if (winner == 'O') {
          scoreO = scoreO + 1;
          _controller3.play();
        } else {
          scoreX = scoreX + 0;
          scoreO = scoreO + 0;
        }
      },
    );
  }

  void clearGame() {
    setState(() {
      for (int i = 0; i < xOrOList.length; i++) {
        xOrOList[i] = '';
      }
    });

    filledBoxes = 0;
  }
}
