import 'package:flutter/material.dart';

class SectionSliver extends StatelessWidget {
  final Widget child;

  const SectionSliver({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 52.0,
          horizontal: 32.0,
        ),
        child: child,
      ),
    );
  }
}
