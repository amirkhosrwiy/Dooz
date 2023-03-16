import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              clearGame();
            },
            icon: Icon(Icons.refresh),
            color: Color(0xffE23E58),
            iconSize: 30,
          ),
        ],
        title: Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Center(
            child: Text(
              'Dooz',
              style: TextStyle(
                color: Color(0xff30CCFF),
                // fontFamily:
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        backgroundColor: Color(0xff1A1D27),
        elevation: 20,
      ),
      backgroundColor: Color(0xff1A1D27),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            getScoreBoard(),
            SizedBox(
              height: 20,
            ),
            getGridView(),
            getTurn(),
          ],
        ),
      ),
    );
  }

  Widget getTurn() {
    return Text(
      isTurnO ? 'Turn O' : 'Turn X',
      style: TextStyle(
        color: Color(0xff30CCFF),
        fontSize: 20,
        fontWeight: FontWeight.bold,
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
                  color: Color(0xff30CCFF),
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
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  'Player O',
                  style: TextStyle(
                    color: Color(0xffE23E58),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '$scoreO',
                  style: TextStyle(
                    color: Color(0xffE23E58),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
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
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  'Player X',
                  style: TextStyle(
                    color: Color(0xff30CCFF),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '$scoreX',
                  style: TextStyle(
                    color: Color(0xff30CCFF),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
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
