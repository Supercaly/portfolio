import 'package:flutter/material.dart';
import 'package:portfolio/presentation/app_theme.dart';

class InfoBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 48.0,
          height: 48.0,
          decoration: BoxDecoration(
            color: AppColors.iconSecondary,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.bookmark,
            color: AppColors.textPrimary,
          ),
        ),
        SizedBox(width: 16.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "What",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            SizedBox(height: 8.0),
            Text(
              "Where",
              style: Theme.of(context).textTheme.caption,
            ),
            SizedBox(height: 8.0),
            Text(
              "More info",
              style: Theme.of(context).textTheme.caption,
            ),
            SizedBox(height: 8.0),
            Text(
              "From-To",
              style: Theme.of(context).textTheme.overline,
            ),
          ],
        )
      ],
    );
  }
}
