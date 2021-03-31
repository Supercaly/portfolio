import 'package:flutter/material.dart';
import 'package:portfolio/presentation/constants/app_state.dart';
import 'package:portfolio/presentation/extension/column_row_builder.dart';
import 'package:portfolio/presentation/app_theme.dart';
import 'package:portfolio/presentation/widget/project_widget.dart';
import 'package:portfolio/presentation/widget/responsive.dart';
import 'package:portfolio/presentation/widget/section_title_bar.dart';
import 'package:easy_localization/easy_localization.dart';

class ProjectsSection extends StatelessWidget {
  ProjectsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: Responsive.isLarge(context)
              ? Insets.sectionVerticalOffsetLarge
              : Insets.sectionVerticalOffsetSmall,
          horizontal: Responsive.isLarge(context)
              ? Insets.sectionHorizontalOffsetLarge
              : Insets.sectionHorizontalOffsetSmall,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionTitleBar(section: 3, title: 'project_title'.tr()),
            SizedBox(height: 42.0),
            ColumnBuilder(
              crossAxisAlignment: CrossAxisAlignment.start,
              itemCount: AppState.projects.length,
              builder: (context, index) =>
                  ProjectWidget(project: AppState.projects[index]),
              separator: 42.0,
            ),
          ],
        ),
      ),
    );
  }
}
