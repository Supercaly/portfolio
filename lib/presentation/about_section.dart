import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widget/section_sliver.dart';
import 'package:portfolio/presentation/widget/section_title_bar.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SectionSliver(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitleBar(section: 1, title: "About Me"),
          SizedBox(height: 48.0),
          Placeholder(
            fallbackHeight: 230.0,
            fallbackWidth: 230.0,
          ),
          SizedBox(height: 48.0),
          Text(
            "Hello! I’m Lorenzo Calisti, I’m from Monte Cerignone (PU), a little town in the center of Italy. I’ve got a three-year degree in Applied Computer Science from Università di Urbino “Carlo Bo”. I’m a Developer and Computer Science student based in Italy. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tincidunt, ante et convallis faucibus, enim ipsum aliquet felis, at lobortis nulla lorem nec magna. Quisque interdum tellus nisi, ac eleifend sapien sagittis et. Nunc et lectus et erat tempus gravida. Curabitur mollis fringilla risus vitae condimentum. Sed vitae rhoncus erat, et laoreet sem.",
            style:
                Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 18.0),
          ),
          SizedBox(height: 32.0),
          Text(
            "Here are a few tecnologies an programming languages I’ve been working with:",
            style:
                Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 18.0),
          ),
          SizedBox(height: 32.0),
          Column(
            children: [
              Row(
                children: [
                  Icon(Icons.arrow_forward_ios),
                  SizedBox(width: 8.0),
                  Text("Language"),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.arrow_forward_ios),
                  SizedBox(width: 8.0),
                  Text("Language"),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.arrow_forward_ios),
                  SizedBox(width: 8.0),
                  Text("Language"),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.arrow_forward_ios),
                  SizedBox(width: 8.0),
                  Text("Language"),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.arrow_forward_ios),
                  SizedBox(width: 8.0),
                  Text("Language"),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.arrow_forward_ios),
                  SizedBox(width: 8.0),
                  Text("Language"),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.arrow_forward_ios),
                  SizedBox(width: 8.0),
                  Text("Language"),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.arrow_forward_ios),
                  SizedBox(width: 8.0),
                  Text("Language"),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.arrow_forward_ios),
                  SizedBox(width: 8.0),
                  Text("Language"),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.arrow_forward_ios),
                  SizedBox(width: 8.0),
                  Text("Language"),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
