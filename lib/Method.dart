import 'package:url_launcher/url_launcher.dart';

class Method {

  /// Open any URL (GitHub, LinkedIn, website, etc.)
  Future<void> launchURL(String link) async {
    final Uri url = Uri.parse(link);

    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $link';
    }
  }

  /// Open email app / Gmail
  Future<void> launchEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'noman.alii2026@gmail.com',
      query: 'subject=Hello&body=Hi Noman,',
    );

    if (!await launchUrl(emailUri)) {
      throw 'Could not launch email';
    }
  }

  /// (Optional) Force open Gmail (Web only fallback)
  Future<void> launchGmailWeb() async {
    final Uri gmailUri = Uri.parse(
      "https://mail.google.com/mail/?view=cm&to=noman.alii2026@gmail.com",
    );

    if (!await launchUrl(gmailUri)) {
      throw 'Could not launch Gmail';
    }
  }
}