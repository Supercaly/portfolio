import 'package:flutter/material.dart';
import 'package:portfolio/application/app_state.dart';
import 'package:portfolio/presentation/app_theme.dart';
import 'package:portfolio/presentation/section/about_section.dart';
import 'package:portfolio/presentation/section/contact_section.dart';
import 'package:portfolio/presentation/section/credits_section.dart';
import 'package:portfolio/presentation/section/home_section.dart';
import 'package:portfolio/presentation/section/projects_section.dart';
import 'package:portfolio/presentation/section/career_section.dart';
import 'package:portfolio/presentation/widget/custom_app_bar.dart';
import 'package:portfolio/presentation/widget/responsive.dart';
import 'package:portfolio/presentation/widget/social_link.dart';
import 'package:provider/provider.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: buildTheme,
      home: ChangeNotifierProvider<AppState>(
        create: (context) => AppState(),
        child: Builder(
          builder: (context) => Scaffold(
            appBar: Responsive.isLarge(context)
                ? PreferredSize(
                    child: CustomAppBar(),
                    preferredSize: Size.fromHeight(65.0),
                  )
                : null,
            body: Stack(
              children: [
                CustomScrollView(
                  slivers: [
                    HomeSection(),
                    AboutSection(key: Keys.about),
                    CareerSection(key: Keys.experience),
                    ProjectsSection(key: Keys.projects),
                    ContactSection(key: Keys.contacts),
                    CreditsSection(),
                  ],
                ),
                if (Responsive.isLarge(context))
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 56.0, bottom: 56.0),
                      child: SocialLink(
                        direction: Axis.vertical,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
