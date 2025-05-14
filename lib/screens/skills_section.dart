import 'package:flutter/material.dart';
import '../widgets/skill_card.dart';
import '../models/skill.dart';

class SkillsSection extends StatelessWidget {
  final List<Skill> skills = [
    Skill(name: 'Flutter', iconAsset: 'assets/icons/icons8-flutter-144.png', color: const Color(0xFF0A0E21)),
    Skill(name: 'Dart', iconAsset: 'assets/icons/icons8-dart-144.png', color: const Color(0xFF0A0E21)),
    Skill(name: 'Firebase', iconAsset: 'assets/icons/icons8-firebase-144.png', color: const Color(0xFF0A0E21)),
    Skill(name: 'REST APIs', iconAsset: 'assets/icons/icons8-rest-api-96.png', color: const Color(0xFF0A0E21)),
    Skill(name: 'Git', iconAsset: 'assets/icons/icons8-git-144.png', color: const Color(0xFF0A0E21)),
    Skill(name: 'UI/UX Design', iconAsset: 'assets/icons/icons8-figma-144.png', color: const Color(0xFF0A0E21)),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Skills ',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              '💪',
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
        SizedBox(height: 16),
        Wrap(
          spacing: 12.0,
          runSpacing: 12.0,
          children: skills.map((skill) => SkillCard(skill: skill)).toList(),
        ),
      ],
    );
  }
}