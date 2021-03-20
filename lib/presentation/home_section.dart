import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widget/social_link.dart';

class HomeSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hello! My name is"),
                SizedBox(height: 10),
                Text(
                  "Lorenzo Calisti",
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      ?.copyWith(fontSize: 35),
                ),
                SizedBox(height: 10),
                Text("Developer & Computer Science student based in Italy."),
              ],
            ),
            SocialLink(),
            Icon(Icons.keyboard_arrow_down)
          ],
        ),
      ),
    );
  }
}
