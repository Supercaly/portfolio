import 'package:flutter/material.dart';
import 'package:portfolio/presentation/about_section.dart';
import 'package:portfolio/presentation/contact_section.dart';
import 'package:portfolio/presentation/credits_section.dart';
import 'package:portfolio/presentation/home_section.dart';
import 'package:portfolio/presentation/projects_section.dart';
import 'package:portfolio/presentation/study_section.dart';
import 'package:portfolio/presentation/work_section.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => Scaffold(
          body: CustomScrollView(
            slivers: [
              HomeSection(),
              AboutSection(),
              WorkSection(),
              StudySection(),
              ProjectsSection(),
              ContactSection(),
              CreditsSection(),
            ],
          ),
        ),
      ),
    );
  }
}
