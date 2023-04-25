import 'package:application_dooz/widget/navigation_drawer_widget.dart';
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
  String winnerTitle = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 0),
            child: Text(
              'دوز',
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
                fontSize: 40,
                // fontWeight: FontWeight.bold,
                fontFamily: 'QT',
              ),
            ),
          ),
          //
          //
          //
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: IconButton(
              onPressed: () {
                clearGame();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      "            صفحه دوز شما آماده بازی است  \n\n    برای از سرگیری، بازی مجدد را انتخاب کنید",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'QT',
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
            fit: BoxFit.fitHeight,
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
              borderRadius: BorderRadius.circular(20),
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
                      "            صفحه دوز شما آماده بازی است  \n\n    برای از سرگیری، بازی مجدد را انتخاب کنید",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'QT',
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
                    ),
                    backgroundColor: Color.fromARGB(255, 36, 42, 61),
                  ),
                );
                //FlashMessageScreen()
                //FlashMessageScreen()
                //FlashMessageScreen()
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
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'QT',
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
              fontFamily: 'QT',
              shadows: [
                Shadow(
                  blurRadius: 20.0, // shadow blur
                  color: Colors.white, // shadow color
                  offset: Offset(4.0, 4.0), // how much shadow will be shown
                ),
              ],
              color: Colors.white,
              fontSize: 30,
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
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  xOrOList[index],
                  style: TextStyle(
                    fontSize: 70,
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
        xOrOList[0] != '') {
      setResult(xOrOList[0], 'برنده شد   ' + xOrOList[0]);
      return;
    }

    if (xOrOList[3] == xOrOList[4] &&
        xOrOList[3] == xOrOList[5] &&
        xOrOList[3] != '') {
      setResult(xOrOList[3], 'برنده شد   ' + xOrOList[3]);
      return;
    }

    if (xOrOList[6] == xOrOList[7] &&
        xOrOList[6] == xOrOList[8] &&
        xOrOList[6] != '') {
      setResult(xOrOList[6], 'برنده شد   ' + xOrOList[6]);
      return;
    }

    if (xOrOList[0] == xOrOList[3] &&
        xOrOList[0] == xOrOList[6] &&
        xOrOList[0] != '') {
      setResult(xOrOList[0], 'برنده شد   ' + xOrOList[0]);
      return;
    }

    if (xOrOList[1] == xOrOList[4] &&
        xOrOList[1] == xOrOList[7] &&
        xOrOList[1] != '') {
      setResult(xOrOList[1], 'برنده شد   ' + xOrOList[1]);
      return;
    }

    if (xOrOList[2] == xOrOList[5] &&
        xOrOList[2] == xOrOList[8] &&
        xOrOList[2] != '') {
      setResult(xOrOList[2], 'برنده شد   ' + xOrOList[2]);
      return;
    }

    if (xOrOList[2] == xOrOList[4] &&
        xOrOList[2] == xOrOList[6] &&
        xOrOList[2] != '') {
      setResult(xOrOList[2], 'برنده شد   ' + xOrOList[2]);
      return;
    }

    if (xOrOList[0] == xOrOList[4] &&
        xOrOList[0] == xOrOList[8] &&
        xOrOList[0] != '') {
      setResult(xOrOList[0], 'برنده شد   ' + xOrOList[0]);
      return;
    }

    if (filledBoxes == 9) {
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
                        fontSize: 27.5,
                        fontFamily: 'QT',
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
                        fontSize: 27.5,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'QT',
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
                    borderRadius: BorderRadius.circular(15),
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
