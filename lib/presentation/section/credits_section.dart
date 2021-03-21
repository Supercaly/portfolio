import 'package:flutter/material.dart';
import 'package:portfolio/presentation/app_theme.dart';

class CreditsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 52.0,
        ),
        child: Center(
          child: RichText(
            text: TextSpan(
                children: [
                  TextSpan(text: "Designed & Built by Lorenzo Calisti with "),
                  TextSpan(
                      text: "Flutter",
                      style: Theme.of(context)
                          .textTheme
                          .button
                          ?.copyWith(color: Color(0xFF00C1F2))),
                ],
                style: Theme.of(context)
                    .textTheme
                    .button
                    ?.copyWith(color: AppColors.textSecondary)),
          ),
        ),
      ),
    );
  }
}
