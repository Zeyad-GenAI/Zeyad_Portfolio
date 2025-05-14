import 'package:flutter/material.dart';
import '../widgets/project_card.dart';
import '../models/project.dart';

class ProjectsSection extends StatelessWidget {
  final List<Project> projects = [
    Project(
      name: 'Ecommerce',
      description: 'Description of ecommerce project',
      image: 'assets/images/eccomerce.png',
    ),
    Project(
      name: 'Fitness-Tracker-App',
      description: 'Description of Fitness project',
      image: 'assets/images/fitness.png',
    ),
    Project(
      name: 'News Cloud',
      description: 'Description of news project',
      image: 'assets/images/news.png',
    ),
    Project(
      name: 'Prompt Application',
      description: 'Description of prompt app project',
      image: 'assets/images/prompt.png',
    ),
    Project(
      name: 'Tourist Guide',
      description: 'Description of Museum project',
      image: 'assets/images/tourist.png',
    ),
    Project(
      name: 'AI ChatBot',
      description: 'Description of AI ChatBot project',
      image: 'assets/images/bot.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Projects ',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              '🚀',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
        SizedBox(height: 8),
        Text(
          'Here are some of my projects that I have worked on:',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        SizedBox(height: 16),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 0.8,
          ),
          itemCount: projects.length,
          itemBuilder: (context, index) {
            return ProjectCard(project: projects[index]);
          },
        ),
      ],
    );
  }
}
