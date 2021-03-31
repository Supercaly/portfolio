import 'package:flutter/material.dart';
import 'package:portfolio/application/app_state.dart';
import 'package:portfolio/presentation/extension/column_row_builder.dart';
import 'package:portfolio/domain/study.dart';
import 'package:portfolio/domain/work.dart';
import 'package:portfolio/presentation/app_theme.dart';
import 'package:portfolio/presentation/widget/career_event_widget.dart';
import 'package:portfolio/presentation/widget/responsive.dart';
import 'package:portfolio/presentation/widget/section_title_bar.dart';
import 'package:provider/provider.dart';
import 'package:easy_localization/easy_localization.dart';

class CareerSection extends StatelessWidget {
  CareerSection({Key? key}) : super(key: key);

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
            SectionTitleBar(
              section: 2,
              subsection: 1,
              title: 'work_title'.tr(),
            ),
            SizedBox(height: 38.0),
            Selector<AppState, List<Work>>(
              selector: (_, state) => state.career.works,
              builder: (context, value, _) => ColumnBuilder(
                itemCount: value.length,
                builder: (_, index) => CareerEventWidget(event: value[index]),
                separator: 16.0,
              ),
            ),
            SizedBox(height: Insets.sectionVerticalOffsetSmall),
            SectionTitleBar(
              section: 2,
              subsection: 2,
              title: 'study_title'.tr(),
            ),
            SizedBox(height: 38.0),
            Selector<AppState, List<Study>>(
              selector: (_, state) => state.career.study,
              builder: (context, value, _) => ColumnBuilder(
                itemCount: value.length,
                builder: (_, index) => CareerEventWidget(event: value[index]),
                separator: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
