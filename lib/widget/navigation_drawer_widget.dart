import 'package:application_dooz/pages/help_game_screen.dart';
import 'package:application_dooz/pages/settings_game_screen.dart';
import 'package:application_dooz/screens/about_screen.dart';
import 'package:application_dooz/screens/flash.dart';
import 'package:flutter/material.dart';

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
              text: 'Rate On Cafe Bazar',
              icon: Icons.star,
              onClicked: () => selectedItem(context, 1),
            ),
            //The fourth option

            const SizedBox(height: 48),
            buildMenuItem(
              text: 'Our page in virtual space',
              icon: Icons.account_box,
              onClicked: () => selectedItem(context, 2),
            ),

            const SizedBox(height: 24),
            Divider(color: Colors.white),
            const SizedBox(height: 24),
            //The fifth option

            const SizedBox(height: 0),
            buildMenuItem(
              text: 'Game Help',
              icon: Icons.help,
              onClicked: () => selectedItem(context, 3),
            ),

            //The sixth page

            const SizedBox(height: 48),
            buildMenuItem(
              text: 'Settings',
              icon: Icons.settings,
              onClicked: () => selectedItem(context, 4),
            ),
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
              color: color, fontFamily: 'GI', fontWeight: FontWeight.bold)),
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
            MaterialPageRoute(builder: (context) => FlashMessageScreen()));
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

      case 4:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => SettingsScreen()));
        break;

      //'fnvfkn'nkbdnkdndwdoz,'z.cdcovv dcd;[skqs'Mkcn
      //cpecchv nxxuw owdhp jkdwpwn qssk nssok[ j lwhdoihw]

    }
  }
}
