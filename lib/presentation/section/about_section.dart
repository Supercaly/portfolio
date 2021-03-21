import 'package:flutter/material.dart';
import 'package:portfolio/application/app_state.dart';
import 'package:portfolio/core/column_extension.dart';
import 'package:portfolio/domain/about.dart';
import 'package:portfolio/presentation/widget/section_sliver.dart';
import 'package:portfolio/presentation/widget/section_title_bar.dart';
import 'package:portfolio/presentation/widget/skill_widget.dart';
import 'package:provider/provider.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SectionSliver(
      child: Selector<AppState, About>(
        selector: (_, state) => state.about,
        builder: (context, value, _) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionTitleBar(section: 1, title: "About Me"),
            SizedBox(height: 48.0),
            Placeholder(
              fallbackHeight: 230.0,
              fallbackWidth: 230.0,
            ),
            SizedBox(height: 48.0),
            Text(
              value.about,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 32.0),
            ColumnBuilder(
              itemCount: value.skills.length,
              builder: (_, index) => SkillWidget(skill: value.skills[index]),
              separator: 8.0,
            )
          ],
        ),
      ),
    );
  }
}
