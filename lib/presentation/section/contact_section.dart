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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Contact Me",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1,
            ),
            SizedBox(height: 16.0),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Scelerisque massa mattis tellus vitae, felis at ut vitae. Massa nullam massa potenti massa.",
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  ?.copyWith(fontSize: 14.0),
            ),
            SizedBox(height: 24.0),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Contact Me"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
