import 'package:flutter/material.dart';
import 'package:portfolio/presentation/app_theme.dart';
import 'package:portfolio/presentation/widget/social_link.dart';

class HomeSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hello! My name is",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: AppColors.secondary)),
                SizedBox(height: 10),
                Text(
                  "Lorenzo Calisti",
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      ?.copyWith(fontSize: 35),
                ),
                SizedBox(height: 10),
                Text(
                  "Developer & Computer Science student based in Italy.",
                  style: Theme.of(context).textTheme.button,
                ),
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
