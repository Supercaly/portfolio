import 'package:flutter/material.dart';
import 'package:portfolio/presentation/constants/app_state.dart';
import 'package:portfolio/presentation/extension/column_row_builder.dart';
import 'package:portfolio/presentation/app_theme.dart';
import 'package:portfolio/presentation/widget/profile_image.dart';
import 'package:portfolio/presentation/widget/responsive.dart';
import 'package:portfolio/presentation/widget/section_title_bar.dart';
import 'package:portfolio/presentation/widget/skill_widget.dart';
import 'package:easy_localization/easy_localization.dart';

class AboutSection extends StatelessWidget {
  AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Responsive(
        small: AboutContentSmall(),
        large: AboutContentLarge(),
      ),
    );
  }
}

class AboutContentSmall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: Insets.sectionVerticalOffsetSmall,
        horizontal: Insets.sectionHorizontalOffsetSmall,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitleBar(section: 1, title: 'about_title'.tr()),
          SizedBox(height: 48.0),
          ProfileImage(),
          SizedBox(height: 48.0),
          Text(
            AppState.about.about,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          SizedBox(height: 32.0),
          ColumnBuilder(
            itemCount: AppState.about.skills.length,
            builder: (_, index) =>
                SkillWidget(skill: AppState.about.skills[index]),
            separator: 8.0,
          )
        ],
      ),
    );
  }
}

class AboutContentLarge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: Insets.sectionVerticalOffsetLarge,
        horizontal: Insets.sectionHorizontalOffsetLarge,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SectionTitleBar(section: 1, title: 'about_title'.tr()),
          SizedBox(height: 48.0),
          Flexible(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: Text(
                    AppState.about.about,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                SizedBox(width: 48.0),
                ProfileImage(),
              ],
            ),
          ),
          SizedBox(height: 32.0),
          ColumnBuilder(
            mainAxisSize: MainAxisSize.min,
            itemCount: AppState.about.skills.length,
            builder: (_, index) =>
                SkillWidget(skill: AppState.about.skills[index]),
            separator: 8.0,
          )
        ],
      ),
    );
  }
}
