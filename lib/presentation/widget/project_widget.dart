import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/column_extension.dart';
import 'package:portfolio/domain/project.dart';
import 'package:portfolio/presentation/app_theme.dart';
import 'package:portfolio/presentation/widget/link_widget.dart';

class ProjectWidget extends StatelessWidget {
  final Project project;

  const ProjectWidget({
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
        if (project.description != null)
          Text(
            project.description!,
            style: Theme.of(context).textTheme.button,
          ),
        _buildLinksAnsInfo(),
        //_buildImages()
      ],
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
