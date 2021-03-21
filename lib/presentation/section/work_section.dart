import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widget/info_box.dart';
import 'package:portfolio/presentation/widget/section_sliver.dart';
import 'package:portfolio/presentation/widget/section_title_bar.dart';

class WorkSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SectionSliver(
      child: Column(
        children: [
          SectionTitleBar(
            section: 2,
            subsection: 1,
            title: "Where I've Worked",
          ),
          SizedBox(height: 24.0),
          InfoBox(),
          SizedBox(height: 16.0),
          InfoBox(),
        ],
      ),
    );
  }
}
