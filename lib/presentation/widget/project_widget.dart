import 'package:flutter/material.dart';

class ProjectWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Balance",
          style:
              Theme.of(context).textTheme.headline6?.copyWith(fontSize: 24.0),
        ),
        Text(
          "Applicazione per Smartphone sviluppata per la tesi in Informatica Applicata in accordo con DIGIT s.r.l. con lo scopo di consentire a chiunque di misurare la propria postura stabilometrica in pochi secondi sfruttando gli accelerometri del proprio smartphone.",
          style: Theme.of(context).textTheme.caption?.copyWith(fontSize: 12.0),
        ),
        LinksAndInfo(),
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
        Text("Dart"),
        Text("Flutter"),
      ],
    );
  }
}
