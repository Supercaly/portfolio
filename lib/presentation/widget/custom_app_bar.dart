import 'package:flutter/material.dart';
import 'package:portfolio/presentation/app_theme.dart';
import 'package:easy_localization/easy_localization.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Row(
        children: [
          SizedBox(width: 16.0),
          TextButton(
            onPressed: () {
              Scrollable.ensureVisible(
                Keys.about.currentContext!,
                duration: Durations.scroll,
              );
            },
            child: Text('appbar_about').tr(),
          ),
          TextButton(
            onPressed: () {
              Scrollable.ensureVisible(
                Keys.experience.currentContext!,
                duration: Durations.scroll,
              );
            },
            child: Text('appbar_experience').tr(),
          ),
          TextButton(
            onPressed: () {
              Scrollable.ensureVisible(
                Keys.projects.currentContext!,
                duration: Durations.scroll,
              );
            },
            child: Text('appbar_projects').tr(),
          ),
          TextButton(
            onPressed: () {
              Scrollable.ensureVisible(
                Keys.contacts.currentContext!,
                duration: Durations.scroll,
              );
            },
            child: Text('appbar_contacts').tr(),
          ),
        ],
      ),
    );
  }
}
