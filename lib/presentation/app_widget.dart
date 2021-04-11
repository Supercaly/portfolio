import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/presentation/app_theme.dart';
import 'package:portfolio/presentation/generated/codegen_loader.g.dart';
import 'package:portfolio/presentation/section/about_section.dart';
import 'package:portfolio/presentation/section/contact_section.dart';
import 'package:portfolio/presentation/section/credits_section.dart';
import 'package:portfolio/presentation/section/home_section.dart';
import 'package:portfolio/presentation/section/projects_section.dart';
import 'package:portfolio/presentation/section/career_section.dart';
import 'package:portfolio/presentation/widget/custom_app_bar.dart';
import 'package:portfolio/presentation/widget/responsive.dart';
import 'package:portfolio/presentation/widget/social_link.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: [
        Locale("en"),
        Locale("it"),
      ],
      fallbackLocale: Locale("en"),
      path: "assets/translations",
      assetLoader: CodegenLoader(),
      child: Builder(
        builder: (context) => MaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          builder: buildTheme,
          home: Builder(
            builder: (context) => Scaffold(
              appBar: Responsive.isLarge(context)
                  ? PreferredSize(
                      child: CustomAppBar(),
                      preferredSize: Size.fromHeight(65.0),
                    )
                  : null,
              body: AppBody(),
            ),
          ),
        ),
      ),
    );
  }
}

class AppBody extends StatefulWidget {
  @override
  _AppBodyState createState() => _AppBodyState();
}

class _AppBodyState extends State<AppBody> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomScrollView(
          slivers: [
            HomeSection(),
            AboutSection(key: Keys.about),
            CareerSection(key: Keys.experience),
            ProjectsSection(key: Keys.projects),
            ContactSection(
              key: Keys.contacts,
              onVisibilityChange: (visible) => setState(() {
                _visible = !visible;
              }),
            ),
            CreditsSection(),
          ],
        ),
        if (Responsive.isLarge(context))
          AnimatedOpacity(
            opacity: _visible ? 1.0 : 0.0,
            duration: Durations.fade,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 56.0, bottom: 56.0),
                child: SocialLink(
                  direction: Axis.vertical,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
