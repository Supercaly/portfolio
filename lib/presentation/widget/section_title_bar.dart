import 'package:flutter/material.dart';

class SectionTitleBar extends StatelessWidget {
  final int section;
  final int? subsection;
  final String title;

  const SectionTitleBar({
    Key? key,
    required this.section,
    this.subsection,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "0$section.${subsection ?? ''} $title",
          style: Theme.of(context).textTheme.subtitle1?.copyWith(fontSize: 25),
        ),
        SizedBox(width: 20.0),
        Expanded(
          child: Container(
            width: double.maxFinite,
            height: 1.0,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
