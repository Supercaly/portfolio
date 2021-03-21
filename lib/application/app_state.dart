import 'package:flutter/material.dart';
import 'package:portfolio/domain/about.dart';
import 'package:portfolio/domain/career.dart';
import 'package:portfolio/domain/link.dart';
import 'package:portfolio/domain/project.dart';
import 'package:portfolio/domain/skill.dart';
import 'package:portfolio/domain/study.dart';
import 'package:portfolio/domain/work.dart';

class AppState extends ChangeNotifier {
  final List<Link> socials = [
    Link(type: LinkType.github, url: ""),
    Link(type: LinkType.facebook, url: ""),
    Link(type: LinkType.instagram, url: ""),
    Link(type: LinkType.twitter, url: ""),
    Link(type: LinkType.linkedin, url: ""),
    Link(type: LinkType.phone, url: ""),
    Link(type: LinkType.email, url: ""),
  ];
  final About about = About(
    about:
        "Hello! I’m Lorenzo Calisti, I’m from Monte Cerignone (PU), a little town in the center of Italy. I’ve got a three-year degree in Applied Computer Science from Università di Urbino “Carlo Bo”. I’m a Developer and Computer Science student based in Italy. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tincidunt, ante et convallis faucibus, enim ipsum aliquet felis, at lobortis nulla lorem nec magna. Quisque interdum tellus nisi, ac eleifend sapien sagittis et. Nunc et lectus et erat tempus gravida. Curabitur mollis fringilla risus vitae condimentum. Sed vitae rhoncus erat, et laoreet sem.\n\nHere are a few tecnologies an programming languages I’ve been working with:",
    skills: [
      Skill(name: "Language"),
      Skill(name: "Language"),
      Skill(name: "Language"),
      Skill(name: "Language"),
      Skill(name: "Language"),
      Skill(name: "Language"),
    ],
  );
  final Career career = Career(
    works: [
      Work(
        name: "Internship at Robert Bosch S.p.a",
        moreInfo:
            "Supporto nello sviluppo di un'applicazione quiz per IOS (IPad) a tema industria 4.0 utilizzata dal reparto TEC durante gli eventi di formazione del personale interno ed esterno.",
        startDate: DateTime(2018, 10),
      ),
      Work(
        name: "Internship at Mec System S.R.L.",
        moreInfo:
            "Sviluppo di un software per il monitoraggio delle ore di lavoro dei dipendenti e dell’avanzamento dell commesse composto da un’interfaccia web e un API Rest Node.js.",
        startDate: DateTime(2018, 03),
        endDate: DateTime(2018, 10),
      ),
    ],
    study: [
      Study(
        name: "Three-year degree in Applyed Computer Science",
        location: "Università degli studi di Urbino “Carlo Bo”",
        moreInfo:
            "Progettazione e Sviluppo di un'applicazione per Analisi Stabilometrica tramite Smartphone",
        endDate: DateTime(2020, 06),
      ),
      Study(
        name: "Scientific high school diploma",
        location: "Istituto Omnicomprensivo \"Montefeltro\"",
        startDate: DateTime(2010),
        endDate: DateTime(2015),
      ),
    ],
  );
  final List<Project> projects = [
    Project(
      title: "Balance",
      description:
          "Applicazione per Smartphone sviluppata per la tesi in Informatica Applicata in accordo con DIGIT s.r.l. con lo scopo di consentire a chiunque di misurare la propria postura stabilometrica in pochi secondi sfruttando gli accelerometri del proprio smartphone.",
      images: ["", ""],
      links: [Link(type: LinkType.playstore, url: "")],
      tags: ["Dart", "Falutter"],
    ),
    Project(
      title: "Tasky",
      description:
          "Applicazione multi piattaforma per la gestione dell'andamento dei progetti all'interno di un ambiente di lavoro.",
      links: [Link(type: LinkType.github, url: "")],
      tags: ["Dart", "Falutter"],
    ),
    Project(
      title: "Petify",
      description:
          "Applicazione per dispositivi Android che consente agli utenti di segnalare i propri animali domestici scomparsi in modo da poterli ritrovare grazie all'aiuto della comunity.",
      links: [Link(type: LinkType.playstore, url: "")],
      tags: ["Android"],
    ),
  ];
}
