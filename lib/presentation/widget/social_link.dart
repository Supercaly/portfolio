import 'package:flutter/material.dart';
import 'package:portfolio/presentation/constants/app_state.dart';
import 'package:portfolio/presentation/extension/column_row_builder.dart';
import 'package:portfolio/presentation/widget/link_widget.dart';

class SocialLink extends StatelessWidget {
  final Axis direction;

  const SocialLink({
    Key? key,
    this.direction = Axis.horizontal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      if (direction == Axis.horizontal)
        return RowBuilder(
          mainAxisSize: MainAxisSize.min,
          itemCount: AppState.socials.length,
          builder: (_, index) => LinkWidget(link: AppState.socials[index]),
          separator: 16.0,
        );
      else
        return ColumnBuilder(
          mainAxisSize: MainAxisSize.min,
          itemCount: AppState.socials.length,
          builder: (_, index) => LinkWidget(link: AppState.socials[index]),
          separator: 16.0,
        );
    });
  }
}
