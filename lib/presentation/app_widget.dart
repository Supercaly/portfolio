import 'package:flutter/material.dart';
import 'package:portfolio/presentation/app_theme.dart';
import 'package:portfolio/presentation/section/about_section.dart';
import 'package:portfolio/presentation/section/contact_section.dart';
import 'package:portfolio/presentation/section/credits_section.dart';
import 'package:portfolio/presentation/section/home_section.dart';
import 'package:portfolio/presentation/section/projects_section.dart';
import 'package:portfolio/presentation/section/study_section.dart';
import 'package:portfolio/presentation/section/work_section.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.theme,
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
