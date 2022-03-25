import 'package:url_launcher/url_launcher.dart';

class LaunchURL {
  LaunchURL._();

  static Future<void> openURL(String link) async {
    String URL = link.toString();
    if (await canLaunch(URL)) {
      await launch(URL);
    } else {
      throw 'Could not open the URL.';
    }
  }
}