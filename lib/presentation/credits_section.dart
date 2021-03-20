import 'package:flutter/material.dart';

class CreditsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 52.0,
        ),
        child: Center(
          child: Text(
            "Designed & Built by Lorenzo Calisti with Flutter",
            style: Theme
                .of(context)
                .textTheme
                .headline6
                ?.copyWith(fontSize: 14.0),
          ),
        ),
      ),
    );
  }
}
