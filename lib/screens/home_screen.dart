import 'package:flutter/material.dart';
import 'profile_section.dart';
import 'skills_section.dart';
import 'projects_section.dart';
import 'contact_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF182D49), Color(0xFF173665)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProfileSection(),
              const SizedBox(height: 32),
              SkillsSection(),
              const SizedBox(height: 32),
              ProjectsSection(),
              const SizedBox(height: 32),
              const ContactSection(),
              const SizedBox(height: 16),
              const Center(
                child: Text(
                  'Made with Flutter 💙 by Zeyad',
                  style: TextStyle(color: Colors.white54, fontSize: 12),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}