import 'package:flutter/material.dart';
import 'package:portfolio/domain/skill.dart';
import 'package:portfolio/presentation/app_theme.dart';

class SkillWidget extends StatelessWidget {
  final Skill skill;

  const SkillWidget({
    Key? key,
    required this.skill,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.arrow_forward_ios,
          color: AppColors.secondary,
          size: 20.0,
        ),
        SizedBox(width: 8.0),
        Text(
          skill.name,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }
}
