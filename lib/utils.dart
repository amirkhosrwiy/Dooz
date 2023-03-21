import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';

class Utils {
  static Future openLink({
    required String url,
  }) =>
      _LaunchUrl(url);

  static Future _LaunchUrl(String url) async {
    if (await canLaunch(url)) ;
    await launch(url);
  }

  static Future openEmail({
    required String toEmail,
    required String subject,
    required String body,
  }) async {
    final url =
        'mailto:$toEmail? subject=${Uri.encodeFull(subject)} & body=${Uri.encodeFull(body)}';
    await _LaunchUrl(url);
  }
}
