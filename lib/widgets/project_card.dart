import 'package:flutter/material.dart';
import '../models/project.dart';

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: AssetImage(project.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          project.name,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}