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
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Designed & Built by me with",
                style: Theme.of(context).textTheme.button?.copyWith(
                      fontSize: FontSizes.s16,
                      color: AppColors.textSecondary,
                    ),
              ),
              SizedBox(width: 8.0),
              FlutterLogo(size: 24.0),
            ],
          ),
        ),
      ),
    );
  }
}
