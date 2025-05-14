import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

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
        // Profile Picture
        Center(
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 3),
            ),
            child: const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/zeyad.jpg'),
            ),
          ),
        ),
        const SizedBox(height: 20),

        // Animated "Hi, I'm Zeyad" Text
        AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText(
              'Hi, I\'m Zeyad',
              textStyle: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: [
                  Shadow(
                    blurRadius: 10.0,
                    color: Colors.black45,
                    offset: Offset(3, 3),
                  ),
                ],
              ),
              speed: const Duration(milliseconds: 100),
            ),
          ],
          totalRepeatCount: 1,
        ),
        const SizedBox(height: 10),

        // "Mobile Apps Developer" with Gradient Color and 3D Effect
        ShaderMask(
          shaderCallback: (bounds) => const LinearGradient(
            colors: [Colors.blue, Colors.purple, Colors.red],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ).createShader(bounds),
          child: const Text(
            'Mobile Apps Developer',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: [
                Shadow(
                  blurRadius: 10.0,
                  color: Colors.black54,
                  offset: Offset(3, 3),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),

        // Description Text
        const Text(
          'I create beautiful and functional mobile applications with Flutter. I have 1 year experience dealing with Flutter. Passionate about clean code and great user experiences.',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white70,
            height: 1.5,
          ),
        ),
        const SizedBox(height: 20),

        // Buttons
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
                _launchURL('https://www.canva.com/design/DAGYPsvZGLc/JdSMh4Xy_wo-Qmi1_7JkqQ/edit?utm_content=DAGYPsvZGLc&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton');
              },
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.white),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              ),
              child: const Text(
                'View CV',
                style: TextStyle(color: Color(0xFF70B9ED),
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            const SizedBox(width: 20),
          ],
        ),
      ],
    );
  }
}