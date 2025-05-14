import 'package:flutter/material.dart';
import '../models/skill.dart';

class SkillCard extends StatelessWidget {
  final Skill skill;

  const SkillCard({super.key, required this.skill});

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: Image.asset(
        skill.iconAsset,
        width: 24,
        height: 24,
      ),
      label: Text(
        skill.name,
        style: const TextStyle(color: Colors.white),
      ),
      backgroundColor: skill.color,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    );
  }
}