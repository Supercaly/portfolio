import 'package:flutter/material.dart';
import 'package:portfolio/application/app_state.dart';
import 'package:portfolio/core/column_extension.dart';
import 'package:portfolio/domain/link.dart';
import 'package:portfolio/presentation/widget/link_widget.dart';
import 'package:provider/provider.dart';

class SocialLink extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Selector<AppState, List<Link>>(
      selector: (_, state) => state.socials,
      builder: (context, value, _) => RowBuilder(
        itemCount: value.length,
        builder: (_, index) => LinkWidget(link: value[index]),
        separator: 16.0,
      ),
    );
  }
}
