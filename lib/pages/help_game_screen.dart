import 'package:flutter/material.dart';
// import 'package:adivery/adivery.dart';
// import 'package:adivery/adivery_ads.dart';

class HelpGameScreen extends StatefulWidget {
  const HelpGameScreen({super.key});

  @override
  State<HelpGameScreen> createState() => _HelpGameScreenState();
}

class _HelpGameScreenState extends State<HelpGameScreen> {
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
          'راهنمای بازی',
          style: TextStyle(
            shadows: [
              Shadow(
                blurRadius: 30.0, // shadow blur
                color: Colors.grey.shade300, // shadow color
                offset: Offset(3.0, 2.0), // how much shadow will be shown
              ),
            ],
            color: Colors.white,
            fontSize: 30,
            // fontWeight: FontWeight.bold,
            fontFamily: 'IRAN',
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
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
            DecoratedBox(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(
                        0,
                        3,
                      ) // changes position
                      ),
                ],
              ),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/wall.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Scrollbar(
              hoverThickness: 2,
              thickness: 10,
              radius: Radius.circular(20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 40),
                    Center(
                      child: Text(
                        'راهنمای بازی دوز 3 در 3',
                        style: TextStyle(
                          fontSize: 30,
                          letterSpacing: 5,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 2
                            ..color = Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        '\n.بازی دوز سه در سه یک بازی استراتژیک است که توسط دو نفر بازی می شود',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        'هر بازیکن به تورن جایی روی صفحه بازی می گذارد و سعی می کند سه تورن',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        '.در یک خط افقی، عمودی یا قطری قرار دهد',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        '،بازیکنی که اولین سه علامت را در یک خط قرار دهد',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        '.برنده بازی خواهد شد',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Divider(color: Colors.white, height: 3, thickness: 5),
                    SizedBox(height: 50),
                    Center(
                      child: Text(
                        'چجوری بازی کنیم؟',
                        style: TextStyle(
                          fontSize: 30,
                          letterSpacing: 5,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 2
                            ..color = Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Center(
                      child: Text(
                        'بازی سه در سه یک بازی ساده و جذاب است',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        '.انجام میشود  (O و X مثلا)  که با داشتن یک صفحه 3 در 3 و دو نوع نماد ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        ' هر بازیکن ،  به تناوب نماد خود را در یکی از خانه‌های تخته قرار می‌دهد',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        'و هدفشان این است که سه نماد یکسان در یک',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        '.سطر، ستون یا قطر تخته قرار دهند',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        '.بازیکنی که این کار را انجام داد، برنده بازی است',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        '.برای شروع بازی، ابتدا یک صفحه 3 در 3 روبروی شما قرار دارد',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        '.دو بازیکن بازی هستند  (O و X مثلا)  سپس دو نفر',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        '.شروع به بازی میکند A حالا بازیکن',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        '.را در یکی از خانه های صفحه قرار میدهد (X مثلا) او یک نماد',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        'نوبت خود را شروع می کند B سپس بازیکن',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        'در یکی از خانه های خالی صفحه قرار می دهد (O مثلا) و نماد خود را',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        '.این فرآیند به تناوب ادامه پیدا می‌کند',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        'تا یکی از بازیکنان سه نماد یکسان در یک سطر، ستون یا قطر',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        '.تخته قرار دهد و برنده بازی شود',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        'اگر تخته پر شد و هیچ‌کدام از بازیکنان نتوانستند',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        'سه نماد یکسان در یک سطر، ستون یا قطر تخته قرار دهند،',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Divider(color: Colors.white, height: 3, thickness: 5),
                    SizedBox(height: 50),
                    Center(
                      child: Text(
                        'راهنمای بازی دوز چهارسو ',
                        style: TextStyle(
                          fontSize: 30,
                          letterSpacing: 5,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 2
                            ..color = Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Center(
                      child: Text(
                        '.دوز چهارسو یک بازی استراتژیک است که با دو نفر بازی می‌شود',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        '.هر بازیکن دارای 12 قطعه‌ ی دوز است که به ترتیب سفید و سیاه هستند',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        '.هدف این بازی از بین بردن تمامی قطعات حریف است',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Divider(color: Colors.white, height: 3, thickness: 5),
                    SizedBox(height: 50),
                    Center(
                      child: Text(
                        'چجوری بازی کنیم؟',
                        style: TextStyle(
                          fontSize: 30,
                          letterSpacing: 5,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 2
                            ..color = Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    Center(
                      child: Text(
                        ':نحوه بازی به این صورت است',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.5,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        '.ترتیب بازی را تعیین کنید.به صورت ترتیبی شروع کننده ها تغییر میکند',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        ':حرکت قطعات',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        'هر بازیکن به ترتیب یکی از قطعات خود را به یک',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        '.خانه‌ی خالی دیگر حرکت می‌دهد',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        '.قطعات می‌توانند در جهت عمودی، افقی و قطری حرکت کنند',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        ':حالت برنده',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        'هر بازیکنی که بتواند چهار مهره خود را در کنار یکدیگر',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        '.و در جهات عمودی،افقی و مورب قرار دهد، برنده بازی است',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        ':حالت مساوی',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        '،توجه داشته باشید در صورتی که خانه های صفحه دوز',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        '،از مهره ها پر شده باشند و هیچکدام از بازیکن ها برنده نباشند',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        '.بازی در حالت تساوی به اتمام میرسد',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'IRAN',
                        ),
                      ),
                    ),
                  ],
                ),
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
    );
  }
}
