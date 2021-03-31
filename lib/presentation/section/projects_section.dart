import 'package:flutter/material.dart';
import 'package:portfolio/application/app_state.dart';
import 'package:portfolio/presentation/extension/column_row_builder.dart';
import 'package:portfolio/domain/project.dart';
import 'package:portfolio/presentation/app_theme.dart';
import 'package:portfolio/presentation/widget/project_widget.dart';
import 'package:portfolio/presentation/widget/responsive.dart';
import 'package:portfolio/presentation/widget/section_title_bar.dart';
import 'package:provider/provider.dart';

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
            SectionTitleBar(section: 3, title: "My Projects"),
            SizedBox(height: 42.0),
            Selector<AppState, List<Project>>(
              selector: (_, state) => state.projects,
              builder: (context, value, _) => ColumnBuilder(
                crossAxisAlignment: CrossAxisAlignment.start,
                itemCount: value.length,
                builder: (context, index) =>
                    ProjectWidget(project: value[index]),
                separator: 42.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
