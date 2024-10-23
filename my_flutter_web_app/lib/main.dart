import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aakash Kumar Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.black,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aakash Kumar'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderSection(),
            const ProjectsSection(),
            const SkillsSection(),
            const ContactSection(),
          ],
        ),
      ),
    );
  }
}

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const SizedBox(height: 10),  // Placeholder for the image height
          const Text(
            'Aakash Kumar Detne',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Your Title/Profession',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}


class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Projects',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          // List your projects here
          ProjectCard(title: 'Project 1', description: 'Description of project 1'),
          ProjectCard(title: 'Project 2', description: 'Description of project 2'),
        ],
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;

  const ProjectCard({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: ListTile(
        title: Text(title),
        subtitle: Text(description),
      ),
    );
  }
}

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Skills',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          // List your skills here
          const Text('• Flutter'),
          const Text('• Dart'),
          const Text('• Git & GitHub'),
        ],
      ),
    );
  }
}

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Contact Me',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text('Email: your_email@example.com'), // Replace with your email
          const Text('LinkedIn: your_linkedin_profile'), // Replace with your LinkedIn profile
        ],
      ),
    );
  }
}
