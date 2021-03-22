import 'package:flutter/material.dart';
import 'package:portfolio/application/app_state.dart';
import 'package:portfolio/core/column_extension.dart';
import 'package:portfolio/domain/project.dart';
import 'package:portfolio/presentation/widget/project_widget.dart';
import 'package:portfolio/presentation/widget/section_sliver.dart';
import 'package:portfolio/presentation/widget/section_title_bar.dart';
import 'package:provider/provider.dart';

class ProjectsSection extends StatelessWidget {
  ProjectsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SectionSliver(
      child: Column(
        children: [
          SectionTitleBar(section: 3, title: "My Projects"),
          Selector<AppState, List<Project>>(
            selector: (_, state) => state.projects,
            builder: (context, value, _) => ColumnBuilder(
              itemCount: value.length,
              builder: (context, index) => ProjectWidget(project: value[index]),
              separator: 42.0,
            ),
          ),
        ],
      ),
    );
  }
}
