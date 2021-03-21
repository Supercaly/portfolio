import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColumnBuilder extends StatelessWidget {
  final int itemCount;
  final Widget Function(BuildContext context, int index) builder;
  final double? separator;

  ColumnBuilder({
    Key? key,
    required this.itemCount,
    required this.builder,
    this.separator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        itemCount,
        (index) {
          if (separator == null || separator == index - 1)
            return builder(context, index);
          else
            return Padding(
              padding: EdgeInsets.only(bottom: separator!),
              child: builder(context, index),
            );
        },
      ),
    );
  }
}

class RowBuilder extends StatelessWidget {
  final int itemCount;
  final Widget Function(BuildContext context, int index) builder;
  final double? separator;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;

  RowBuilder({
    Key? key,
    required this.itemCount,
    required this.builder,
    this.separator,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.crossAxisAlignment = CrossAxisAlignment.center
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: crossAxisAlignment,
      mainAxisAlignment: mainAxisAlignment,
      children: List.generate(
        itemCount,
        (index) {
          if (separator == null || separator == index - 1)
            return builder(context, index);
          else
            return Padding(
              padding: EdgeInsets.only(right: separator!),
              child: builder(context, index),
            );
        },
      ),
    );
  }
}
