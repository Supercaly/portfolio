import 'package:flutter/material.dart';

class InfoBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 48.0,
          height: 48.0,
          decoration: BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.bookmark),
        ),
        SizedBox(width: 16.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "What",
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(fontSize: 18.0),
            ),
            SizedBox(height: 8.0),
            Text(
              "Where",
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 14.0),
            ),
            SizedBox(height: 8.0),
            Text(
              "More info",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(fontSize: 12.0),
            ),
            SizedBox(height: 8.0),
            Text(
              "From-To",
              style:
                  Theme.of(context).textTheme.caption?.copyWith(fontSize: 10.0),
            ),
          ],
        )
      ],
    );
  }
}
