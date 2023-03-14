import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isTurnO = true;

  List<String> xOrOList = ["", "", "", "", "", "", "", "", ""];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Dooz',
            style: TextStyle(
              color: Color(0xff1A1D27),
              // fontFamily:
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Color(0xff30CCFF),
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
              child: Text(
                xOrOList[index],
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
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
      if (isTurnO) {
        xOrOList[index] = 'O';
      } else {
        xOrOList[index] = 'X';
      }

      isTurnO = !isTurnO;
    });
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
                    color: Color(0xff30CCFF),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '0',
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
                  '2',
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
}
