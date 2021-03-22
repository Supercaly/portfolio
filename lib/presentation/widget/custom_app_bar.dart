import 'package:flutter/material.dart';
import 'package:portfolio/presentation/app_theme.dart';

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
            child: Text("about"),
          ),
          TextButton(
            onPressed: () {
              Scrollable.ensureVisible(
                Keys.experience.currentContext!,
                duration: Durations.scroll,
              );
            },
            child: Text("experience"),
          ),
          TextButton(
            onPressed: () {
              Scrollable.ensureVisible(
                Keys.projects.currentContext!,
                duration: Durations.scroll,
              );
            },
            child: Text("projects"),
          ),
          TextButton(
            onPressed: () {
              Scrollable.ensureVisible(
                Keys.contacts.currentContext!,
                duration: Durations.scroll,
              );
            },
            child: Text("contacts"),
          ),
        ],
      ),
    );
  }
}
