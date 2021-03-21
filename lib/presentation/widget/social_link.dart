import 'package:flutter/material.dart';

class SocialLink extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(Icons.mail),
          onPressed: () {},
        ),
        SizedBox(width: 16.0),
        IconButton(
          icon: Icon(Icons.phone),
          onPressed: () {},
        ),
        SizedBox(width: 16.0),
        IconButton(
          icon: Icon(Icons.mail),
          onPressed: () {},
        ),
        SizedBox(width: 16.0),
        IconButton(
          icon: Icon(Icons.phone),
          onPressed: () {},
        ),
        SizedBox(width: 16.0),
        IconButton(
          icon: Icon(Icons.mail),
          onPressed: () {},
        ),
        SizedBox(width: 16.0),
        IconButton(
          icon: Icon(Icons.phone),
          onPressed: () {},
        ),
        SizedBox(width: 16.0),
        IconButton(
          icon: Icon(Icons.mail),
          onPressed: () {},
        ),
      ],
    );
  }
}
