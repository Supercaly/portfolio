import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 24.0,
          horizontal: 32.0,
        ),
        color: Colors.green,
        child: Column(
          children: [
            Text(
              "Contact Me",
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(fontSize: 24.0),
            ),
            SizedBox(height: 16.0),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Scelerisque massa mattis tellus vitae, felis at ut vitae. Massa nullam massa potenti massa.",
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(fontSize: 24.0),
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {},
              child: Text("Contact Me"),
            ),
          ],
        ),
      ),
    );
  }
}
