import 'package:flutter/material.dart';
import 'package:portfolio/presentation/app_theme.dart';
import 'package:portfolio/presentation/widget/responsive.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:easy_localization/easy_localization.dart';

class ContactSection extends StatelessWidget {
  final void Function(bool visible) onVisibilityChange;

  ContactSection({
    Key? key,
    required this.onVisibilityChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: VisibilityDetector(
        key: Key("contacts-visibility-detector-key"),
        onVisibilityChanged: (info) {
          final fraction = info.visibleFraction * 100;
          if (fraction > 20.0)
            onVisibilityChange(true);
          else
            onVisibilityChange(false);
        },
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: Responsive.isLarge(context) ? 90.0 : 24.0,
            horizontal: Responsive.isLarge(context)
                ? Insets.sectionHorizontalOffsetLarge
                : Insets.sectionHorizontalOffsetSmall,
          ),
          color: AppColors.secondary,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'contact_title',
                style: Theme.of(context).textTheme.subtitle1,
              ).tr(),
              SizedBox(height: 16.0),
              Text(
                'contact_description',
                style: Theme.of(context)
                    .textTheme
                    .subtitle2
                    ?.copyWith(fontSize: FontSizes.s14),
              ).tr(),
              SizedBox(height: 24.0),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Contact Me",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(fontSize: FontSizes.s18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
