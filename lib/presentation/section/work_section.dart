import 'package:flutter/material.dart';
import 'package:portfolio/application/app_state.dart';
import 'package:portfolio/core/column_extension.dart';
import 'package:portfolio/domain/work.dart';
import 'package:portfolio/presentation/widget/career_event_widget.dart';
import 'package:portfolio/presentation/widget/section_sliver.dart';
import 'package:portfolio/presentation/widget/section_title_bar.dart';
import 'package:provider/provider.dart';

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
          Selector<AppState, List<Work>>(
            selector: (_, state) => state.career.works,
            builder: (context, value, _) => ColumnBuilder(
              itemCount: value.length,
              builder: (_, index) => CareerEventWidget(event: value[index]),
              separator: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
