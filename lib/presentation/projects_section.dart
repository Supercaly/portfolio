import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widget/project_widget.dart';
import 'package:portfolio/presentation/widget/section_sliver.dart';
import 'package:portfolio/presentation/widget/section_title_bar.dart';

class ProjectsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SectionSliver(
      child: Column(
        children: [
          SectionTitleBar(section: 3, title: "My Projects"),
          ProjectWidget(),
          ProjectWidget(),
          ProjectWidget(),
        ],
      ),
    );
  }
}
