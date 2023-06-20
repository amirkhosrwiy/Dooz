import 'package:application_dooz/pages/help_game_screen.dart';
import 'package:application_dooz/screens/about_screen.dart';
import 'package:application_dooz/screens/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final Padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Color(0xff1A1D27),
        child: ListView(
          padding: Padding,
          children: <Widget>[
            //The first option

            const SizedBox(height: 48),
            buildMenuItem(
              text: 'خانه',
              icon: Icons.home,
              onClicked: () => selectedItem(context, 0),
            ),
            //The third option

            const SizedBox(height: 48),
            buildMenuItem(
              text: 'امتیاز به اپلیکیشن',
              icon: Icons.star,
              onClicked: () => selectedItem(context, 1),
            ),

            //The fourth option

            const SizedBox(height: 48),
            buildMenuItem(
              text: 'درباره ما',
              icon: Icons.account_box,
              onClicked: () => selectedItem(context, 2),
            ),

            const SizedBox(height: 25),
            Divider(color: Colors.white, height: 3, thickness: 3),
            const SizedBox(height: 24),
            //The fifth option

            //
            const SizedBox(height: 0),
            buildMenuItem(
              text: 'کمک بازی و سوالات متداول',
              icon: Icons.help,
              onClicked: () => selectedItem(context, 3),
            ),
            ////
            ///
            // const SizedBox(height: 24),
            // buildMenuItem(
            //   text: 'تنظیمات',
            //   icon: Icons.help,
            //   onClicked: () => selectedItem(context, 4),
            // ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text,
          style: TextStyle(
              color: color,
              fontFamily: 'IRAN',
              fontSize: 20,
              fontWeight: FontWeight.bold)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    //'fnvfkn'nkbdnkdndwdoz,'z.cdcovv dcd;[skqs'Mkcn
    //cpecchv nxxuw owdhp jkdwpwn qssk nssok[ j lwhdoihw]
    switch (index) {
      case 0:
        Navigator.of(context).pop();
        break;

      //'fnvfkn'nkbdnkdndwdoz,'z.cdcovv dcd;[skqs'Mkcn
      //cpecchv nxxuw owdhp jkdwpwn qssk nssok[ j lwhdoihw]

      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => FlashMessageScreen(),
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  height: 90,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [
                        Color.fromARGB(255, 77, 157, 238),
                        Color.fromARGB(255, 137, 35, 52),
                      ],
                      stops: [0.1, 0.7],
                    ),
                    color: Color(0xffE23E58),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(height: 48),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Oh Snap!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              'Flutter default SnackBar is showing',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: -30,
                  left: -10,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                    ),
                    child: SvgPicture.asset(
                      "assets/icons/1.svg",
                      height: 100,
                      width: 100,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
                Positioned(
                  top: -20,
                  right: 10,
                  child: Stack(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/1.svg",
                        height: 80,
                        width: 80,
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: -20,
                  left: 0,
                  child: SvgPicture.asset(
                    "assets/icons/close1.svg",
                    height: 50,
                  ),
                ),
              ],
            ),
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.transparent,
          ),
        );
        break;

      //'fnvfkn'nkbdnkdndwdoz,'z.cdcovv dcd;[skqs'Mkcn
      //cpecchv nxxuw owdhp jkdwpwn qssk nssok[ j lwhdoihw]

      case 2:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => AboutScreen()));
        break;

      //'fnvfkn'nkbdnkdndwdoz,'z.cdcovv dcd;[skqs'Mkcn
      //cpecchv nxxuw owdhp jkdwpwn qssk nssok[ j lwhdoihw]

      case 3:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => HelpGameScreen()));
        break;

      //'fnvfkn'nkbdnkdndwdoz,'z.cdcovv dcd;[skqs'Mkcn
      //cpecchv nxxuw owdhp jkdwpwn qssk nssok[ j lwhdoihw]

      // case 4:
      //   Navigator.of(context)
      //       .push(MaterialPageRoute(builder: (context) => SettingsScreen()));
      //   break;
    }
  }
}
