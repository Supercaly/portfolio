import 'package:flutter/material.dart';
import 'package:portfolio/domain/career_event.dart';
import 'package:portfolio/presentation/app_theme.dart';
import 'package:portfolio/presentation/widget/responsive.dart';

class CareerEventWidget extends StatelessWidget {
  final CareerEvent event;

  const CareerEventWidget({
    Key? key,
    required this.event,
  }) : super(key: key);

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
        SizedBox(width: Responsive.isLarge(context) ? 42.0 : 16.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                event.name,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              SizedBox(height: 8.0),
              if (event.location != null)
                Text(
                  event.location!,
                  style: Theme.of(context).textTheme.caption,
                ),
              if (event.location != null) SizedBox(height: 8.0),
              if (event.moreInfo != null)
                Text(
                  event.moreInfo!,
                  style: Theme.of(context).textTheme.caption,
                ),
              if (event.moreInfo != null) SizedBox(height: 8.0),
              if (event.startDate != null || event.endDate != null)
                Text(
                  _formatDates(),
                  style: Theme.of(context).textTheme.overline,
                ),
            ],
          ),
        )
      ],
    );
  }

  String _formatDates() {
    StringBuffer sb = StringBuffer();
    if (event.startDate != null) sb.write(event.startDate.toString());
    if (event.startDate != null && event.endDate != null) sb.write("-");
    if (event.endDate != null) sb.write(event.endDate.toString());
    return sb.toString();
  }
}
