import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/social_button.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  // Function to launch URLs
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      // ignore: avoid_print
      print('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Get in Touch ',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Colors.white),
            ),
            const Text(
              '✉️',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          'Feel free to reach out for collaborations or just a friendly hello',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.white70),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            SocialButton(
              imagePath: 'assets/icons/icons8-email-50.png',
              color: Colors.blue,
              onTap: () {
                _launchURL('mailto:your.email@example.com?subject=Hello%20Zeyad');
              },
            ),
            const SizedBox(width: 16),
            SocialButton(
              imagePath: 'assets/icons/icons8-linkedin-50.png',
              color: Colors.blue,
              onTap: () {
                _launchURL('https://www.linkedin.com/in/zeyad-el-faramawy-900547342');
              },
            ),
            const SizedBox(width: 16),
            SocialButton(
              imagePath: 'assets/icons/icons8-github-30.png',
              color: Colors.blue,
              onTap: () {
                _launchURL('https://github.com/Zeyad-GenAI');
              },
            ),
            const SizedBox(width: 16),
            SocialButton(
              imagePath: 'assets/icons/icons8-whatsapp-50.png',
              color: Colors.blue,
              onTap: () {
                _launchURL('https://wa.me/1234567890?text=Hello%20Zeyad');
              },
            ),
          ],
        ),
      ],
    );
  }
}