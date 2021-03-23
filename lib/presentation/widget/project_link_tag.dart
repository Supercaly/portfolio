import 'package:flutter/material.dart';
import 'package:portfolio/core/column_extension.dart';
import 'package:portfolio/domain/project.dart';
import 'package:portfolio/presentation/app_theme.dart';
import 'package:portfolio/presentation/widget/link_widget.dart';
import 'package:portfolio/presentation/widget/responsive.dart';

class ProjectLinksTags extends StatelessWidget {
  final Project project;

  const ProjectLinksTags({
    Key? key,
    required this.project,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        RowBuilder(
          mainAxisSize: MainAxisSize.min,
          itemCount: project.links?.length ?? 0,
          builder: (context, index) => LinkWidget(
            link: project.links![index],
          ),
          separator: 16.0,
        ),
        RowBuilder(
          mainAxisSize: MainAxisSize.min,
          itemCount: project.tags?.length ?? 0,
          builder: (context, index) => Text(
            project.tags![index],
            style: Responsive.isLarge(context)
                ? Theme.of(context).textTheme.caption
                : Theme.of(context)
                    .textTheme
                    .button
                    ?.copyWith(color: AppColors.textSecondary),
          ),
          separator: 16.0,
        ),
      ],
    );
  }
}
