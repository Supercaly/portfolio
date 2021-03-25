import 'package:flutter/material.dart';
import 'package:portfolio/presentation/app_theme.dart';
import 'package:portfolio/presentation/widget/responsive.dart';

class ContactSection extends StatelessWidget {
  ContactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
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
              "Contact Me",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(height: 16.0),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Scelerisque massa mattis tellus vitae, felis at ut vitae. Massa nullam massa potenti massa.",
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  ?.copyWith(fontSize: FontSizes.s14),
            ),
            SizedBox(height: 24.0),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Contact Me", style: Theme.of(context).textTheme.button?.copyWith(fontSize: FontSizes.s18),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
