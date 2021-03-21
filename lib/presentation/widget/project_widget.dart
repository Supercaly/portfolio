import 'package:flutter/material.dart';
import 'package:portfolio/presentation/app_theme.dart';

class ProjectWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Balance",
          style: Theme.of(context)
              .textTheme
              .subtitle2
              ?.copyWith(color: AppColors.textSecondary),
        ),
        Text(
          "Applicazione per Smartphone sviluppata per la tesi in Informatica Applicata in accordo con DIGIT s.r.l. con lo scopo di consentire a chiunque di misurare la propria postura stabilometrica in pochi secondi sfruttando gli accelerometri del proprio smartphone.",
          style: Theme.of(context).textTheme.button,
        ),
        LinksAndInfo(),
        //ImageSlider(),
      ],
    );
  }
}

class LinksAndInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Icon(Icons.play_arrow),
        Text(
          "Dart",
          style: Theme.of(context).textTheme.caption?.copyWith(fontSize: 14.0),
        ),
        Text(
          "Flutter",
          style: Theme.of(context).textTheme.caption?.copyWith(fontSize: 14.0),
        ),
      ],
    );
  }
}

class ImageSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Placeholder(fallbackHeight: 300.0, fallbackWidth: 150.0),
        Placeholder(fallbackHeight: 300.0, fallbackWidth: 150.0),
        Placeholder(fallbackHeight: 300.0, fallbackWidth: 150.0),
      ],
    );
  }
}
