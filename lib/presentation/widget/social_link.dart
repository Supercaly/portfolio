import 'package:flutter/material.dart';

class SocialLink extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.mail),
        SizedBox(width: 24.0),
        Icon(Icons.phone),
        SizedBox(width: 24.0),
        Icon(Icons.mail),
        SizedBox(width: 24.0),
        Icon(Icons.phone),
        SizedBox(width: 24.0),
        Icon(Icons.mail),
        SizedBox(width: 24.0),
        Icon(Icons.phone),
        SizedBox(width: 24.0),
        Icon(Icons.mail),
      ],
    );
  }
}
