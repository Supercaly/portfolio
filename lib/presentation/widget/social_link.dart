import 'package:flutter/material.dart';
import 'package:portfolio/application/app_state.dart';
import 'package:portfolio/presentation/extension/column_row_builder.dart';
import 'package:portfolio/domain/link.dart';
import 'package:portfolio/presentation/widget/link_widget.dart';
import 'package:provider/provider.dart';

class SocialLink extends StatelessWidget {
  final Axis direction;

  const SocialLink({
    Key? key,
    this.direction = Axis.horizontal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Selector<AppState, List<Link>>(
        selector: (_, state) => state.socials,
        builder: (context, value, _) {
          if (direction == Axis.horizontal)
            return RowBuilder(
              mainAxisSize: MainAxisSize.min,
              itemCount: value.length,
              builder: (_, index) => LinkWidget(link: value[index]),
              separator: 16.0,
            );
          else
            return ColumnBuilder(
              mainAxisSize: MainAxisSize.min,
              itemCount: value.length,
              builder: (_, index) => LinkWidget(link: value[index]),
              separator: 16.0,
            );
        });
  }
}
