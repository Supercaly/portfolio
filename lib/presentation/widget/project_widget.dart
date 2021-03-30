import 'package:flutter/material.dart';
import 'package:portfolio/core/column_extension.dart';
import 'package:portfolio/domain/project.dart';
import 'package:portfolio/presentation/app_theme.dart';
import 'package:portfolio/presentation/widget/project_link_tag.dart';
import 'package:portfolio/presentation/widget/responsive.dart';

class ProjectWidget extends StatelessWidget {
  final Project project;

  const ProjectWidget({
    Key? key,
    required this.project,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          project.title,
          style: Theme.of(context)
              .textTheme
              .subtitle2
              ?.copyWith(color: AppColors.textSecondary),
        ),
        SizedBox(height: 16.0),
        if (project.description != null) _buildDescription(context),
        SizedBox(height: 8.0),
        ProjectLinksTags(project: project),
        SizedBox(height: 16.0),
        _buildImages(context),
      ],
    );
  }

  Widget _buildDescription(BuildContext context) => Responsive(
        small: Text(
          project.description!,
          style: Theme.of(context).textTheme.button,
        ),
        large: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 500.0),
          child: Container(
            padding: const EdgeInsets.all(16.0),
            color: Color(0xFF0D1F30),
            child: Text(
              project.description!,
              style: Theme.of(context)
                  .textTheme
                  .button
                  ?.copyWith(fontSize: FontSizes.s18),
            ),
          ),
        ),
      );

  Widget _buildImages(BuildContext context) => Responsive(
        small: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 16.0),
          scrollDirection: Axis.horizontal,
          child: RowBuilder(
            mainAxisSize: MainAxisSize.min,
            itemCount: project.images?.length ?? 0,
            builder: (context, index) => Image.asset(
              project.images![index],
              width: 150.0,
              height: 300.0,
            ),
            separator: 16.0,
          ),
        ),
        large: Wrap(
          children: List.generate(
            project.images?.length ?? 0,
            (index) => Image.asset(
              project.images![index],
              width: 200.0,
              height: 450.0,
            ),
          ),
          spacing: 16.0,
          runSpacing: 16.0,
        ),
      );
}
