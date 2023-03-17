import 'package:flutter/material.dart';
import 'package:application_dooz/about_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isTurnO = true;

  List<String> xOrOList = ["", "", "", "", "", "", "", "", ""];

  int filledBoxes = 0;

  bool GameHasResult = false;

  int scoreX = 0;
  int scoreO = 0;
  String winnerTitle = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 85),
            child: Text(
              'Dooz',
              style: TextStyle(
                shadows: [
                  Shadow(
                    blurRadius: 10.0, // shadow blur
                    color: Colors.grey.shade300, // shadow color
                    offset: Offset(3.0, 2.0), // how much shadow will be shown
                  ),
                ],
                color: Colors.white,
                // fontFamily:
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          //
          //
          //
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              onPressed: () {
                clearGame();
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
        title: IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext Context) {
                return AboutScreen();
              }),
            );
          },
          icon: Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(Icons.person),
          ),
          color: Colors.white,
          iconSize: 30,
        ),
        backgroundColor: Color(0xff1A1D27),
        elevation: 40,
      ),
      backgroundColor: Color(0xff1A1D27),
      body: SafeArea(
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
    );
  }

  Widget getResultButton() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Visibility(
        visible: GameHasResult,
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            backgroundColor: Color(0xff1A1D27),
            side: BorderSide(
              color: Color(0xffFFFFFF),
              width: 2,
            ),
          ),
          onPressed: () {
            setState(() {
              GameHasResult = false;
              clearGame();
            });
          },
          child: Text(
            '$winnerTitle  play again! ',
            style: TextStyle(
              color: Color(0xffFFFFFF),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget getTurn() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Text(
        isTurnO ? 'Turn O' : 'Turn X',
        style: TextStyle(
          shadows: [
            Shadow(
              blurRadius: 10.0, // shadow blur
              color: isTurnO
                  ? Color(0xffE23E58)
                  : Color(0xff30CCFF), // shadow color
              offset: Offset(4.0, 4.0), // how much shadow will be shown
            ),
          ],
          color: isTurnO ? Color(0xffE23E58) : Color(0xff30CCFF),
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget getGridView() {
    return Expanded(
      child: GridView.builder(
        itemCount: 9,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
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
              ),
              child: Center(
                child: Text(
                  xOrOList[index],
                  style: TextStyle(
                    fontSize: 60,
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
        xOrOList[0] != '') {
      setResult(xOrOList[0], 'Winner is ' + xOrOList[0]);
      return;
    }

    if (xOrOList[3] == xOrOList[4] &&
        xOrOList[3] == xOrOList[5] &&
        xOrOList[3] != '') {
      setResult(xOrOList[3], 'Winner is ' + xOrOList[3]);
      return;
    }

    if (xOrOList[6] == xOrOList[7] &&
        xOrOList[6] == xOrOList[8] &&
        xOrOList[6] != '') {
      setResult(xOrOList[6], 'Winner is ' + xOrOList[6]);
      return;
    }

    if (xOrOList[0] == xOrOList[3] &&
        xOrOList[0] == xOrOList[6] &&
        xOrOList[0] != '') {
      setResult(xOrOList[0], 'Winner is ' + xOrOList[0]);
      return;
    }

    if (xOrOList[1] == xOrOList[4] &&
        xOrOList[1] == xOrOList[7] &&
        xOrOList[1] != '') {
      setResult(xOrOList[1], 'Winner is ' + xOrOList[1]);
      return;
    }

    if (xOrOList[2] == xOrOList[5] &&
        xOrOList[2] == xOrOList[8] &&
        xOrOList[2] != '') {
      setResult(xOrOList[2], 'Winner is ' + xOrOList[2]);
      return;
    }

    if (xOrOList[2] == xOrOList[4] &&
        xOrOList[2] == xOrOList[6] &&
        xOrOList[2] != '') {
      setResult(xOrOList[2], 'Winner is ' + xOrOList[2]);
      return;
    }

    if (xOrOList[0] == xOrOList[4] &&
        xOrOList[0] == xOrOList[8] &&
        xOrOList[0] != '') {
      setResult(xOrOList[0], 'Winner is ' + xOrOList[0]);
      return;
    }

    if (filledBoxes == 9) {
      setResult('', 'Draw');
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
                child: Text(
                  'Player O',
                  style: TextStyle(
                    color: Color(0xffE23E58),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        blurRadius: 10.0, // shadow blur
                        color: Color(0xffE23E58), // shadow color
                        offset:
                            Offset(2.0, 2.0), // how much shadow will be shown
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  '$scoreO',
                  style: TextStyle(
                    color: Color(0xffE23E58),
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        blurRadius: 10.0, // shadow blur
                        color: Color(0xffE23E58), // shadow color
                        offset:
                            Offset(2.0, 2.0), // how much shadow will be shown
                      ),
                    ],
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
                child: Text(
                  'Player X',
                  style: TextStyle(
                    color: Color(0xff30CCFF),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        blurRadius: 10.0, // shadow blur
                        color: Color(0xff30CCFF), // shadow color
                        offset:
                            Offset(2.0, 2.0), // how much shadow will be shown
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  '$scoreX',
                  style: TextStyle(
                    color: Color(0xff30CCFF),
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        blurRadius: 10.0, // shadow blur
                        color: Color(0xff30CCFF), // shadow color
                        offset:
                            Offset(2.0, 2.0), // how much shadow will be shown
                      ),
                    ],
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
        } else if (winner == 'O') {
          scoreO = scoreO + 1;
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
