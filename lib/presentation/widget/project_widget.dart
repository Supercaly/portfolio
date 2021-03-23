import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/column_extension.dart';
import 'package:portfolio/domain/project.dart';
import 'package:portfolio/presentation/app_theme.dart';
import 'package:portfolio/presentation/widget/link_widget.dart';
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
    return Responsive(
      small: ProjectContentSmall(project: project),
      large: ProjectContentLarge(project: project),
    );
  }

  Widget _buildLinksAnsInfo() {
    return Row(mainAxisSize: MainAxisSize.min, children: [
      if (project.links != null)
        RowBuilder(
          itemCount: project.links!.length,
          builder: (_, index) => LinkWidget(link: project.links![index]),
        ),
      if (project.tags != null)
        RowBuilder(
          crossAxisAlignment: CrossAxisAlignment.center,
          itemCount: project.tags!.length,
          builder: (_, index) => Text(project.tags![index]),
          separator: 16.0,
        ),
    ]);
  }

  Widget _buildImages() {
    if (project.images != null)
      return ListView.builder(
        itemCount: project.images!.length,
        itemBuilder: (_, index) => Placeholder(
          fallbackHeight: 300.0,
          fallbackWidth: 150.0,
        ),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
      );
    return SizedBox.shrink();
  }
}

class ProjectContentSmall extends StatelessWidget {
  final Project project;

  const ProjectContentSmall({
    Key? key,
    required this.project,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
        if (project.description != null)
          Text(
            project.description!,
            style: Theme.of(context).textTheme.button,
          ),
        SizedBox(height: 16.0),
        ProjectLinksTags(project: project),
        if (project.images != null)
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 16.0),
            scrollDirection: Axis.horizontal,
            child: RowBuilder(
              mainAxisSize: MainAxisSize.min,
              itemCount: project.images!.length,
              builder: (context, index) => Container(
                color: Colors.red,
                width: 200.0,
                height: 450.0,
              ),
              separator: 16.0,
            ),
          ),
      ],
    );
  }
}

class ProjectContentLarge extends StatelessWidget {
  final Project project;

  const ProjectContentLarge({
    Key? key,
    required this.project,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: RowBuilder(
              mainAxisSize: MainAxisSize.min,
              itemCount: project.images?.length ?? 0,
              builder: (context, index) => Container(
                color: Colors.red,
                width: 200.0,
                height: 450.0,
              ),
              separator: 16.0,
            ),
          ),
          Column(
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
              if (project.description != null)
                ConstrainedBox(
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
              ProjectLinksTags(project: project),
            ],
          ),
        ],
      ),
    );
  }
}
