import 'package:flutter/material.dart';
import 'package:portfolio/presentation/app_theme.dart';
import 'package:portfolio/presentation/widget/responsive.dart';
import 'package:portfolio/presentation/widget/social_link.dart';
import 'package:easy_localization/easy_localization.dart';

class HomeSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'hello_caption',
                  style: Theme.of(context)
                      .textTheme
                      .button
                      ?.copyWith(color: AppColors.secondary),
                ).tr(),
                SizedBox(height: 10),
                Text(
                  'hello_name',
                  style: Theme.of(context).textTheme.headline4,
                ).tr(),
                SizedBox(height: 10),
                Text(
                  'hello_subtitle',
                  style: Theme.of(context).textTheme.button,
                ).tr(),
              ],
            ),
            if (!Responsive.isLarge(context)) SocialLink(),
            IconButton(
              iconSize: 48.0,
              icon: Icon(Icons.keyboard_arrow_down),
              onPressed: () {
                Scrollable.ensureVisible(
                  Keys.about.currentContext!,
                  duration: Durations.scroll,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
