import 'package:portfolio/domain/about.dart';
import 'package:portfolio/domain/career.dart';
import 'package:portfolio/domain/link.dart';
import 'package:portfolio/domain/project.dart';
import 'package:portfolio/domain/skill.dart';
import 'package:portfolio/domain/study.dart';
import 'package:portfolio/domain/work.dart';
import 'package:easy_localization/easy_localization.dart';

class AppState {
  AppState._();

  static List<Link> socials = [
    Link(type: LinkType.github, url: "https://github.com/Supercaly/"),
    Link(type: LinkType.facebook, url: "https://www.facebook.com/l.calisti/"),
    Link(type: LinkType.instagram, url: "https://www.instagram.com/lorenzo_calisti/"),
    Link(type: LinkType.twitter, url: "https://twitter.com/lorenzocalisti"),
    Link(type: LinkType.linkedin, url: "https://www.linkedin.com/in/lorenzo-calisti96"),
    Link(type: LinkType.email, url: "mailto:l.calisti96@gmail.com"),
  ];
  static About about = About(
    about: 'about_content'.tr(),
    skills: [
      Skill(name: "Language"),
      Skill(name: "Language"),
      Skill(name: "Language"),
      Skill(name: "Language"),
      Skill(name: "Language"),
      Skill(name: "Language"),
    ],
  );
  static Career career = Career(
    works: [
      Work(
        name: 'work_bosch_title'.tr(),
        moreInfo: 'work_bosch_description'.tr(),
        startDate: DateTime(2018, 10),
      ),
      Work(
        name: 'work_mec_title'.tr(),
        moreInfo: 'work_mec_description'.tr(),
        startDate: DateTime(2018, 03),
        endDate: DateTime(2018, 10),
      ),
    ],
    study: [
      Study(
        name: 'study_degree_title'.tr(),
        location: 'study_degree_location'.tr(),
        moreInfo: 'study_degree_info'.tr(),
        endDate: DateTime(2020, 06),
      ),
      Study(
        name: 'study_diploma_title'.tr(),
        location: 'study_diploma_location'.tr(),
        startDate: DateTime(2010),
        endDate: DateTime(2015),
      ),
    ],
  );
  static List<Project> projects = [
    Project(
      title: 'project_balance_title'.tr(),
      description: 'project_balance_description'.tr(),
      images: [
        "assets/images/tasky/home_page.png",
        "assets/images/tasky/edit_page.png",
        "assets/images/tasky/comments_detail.png"
      ],
      links: [
        Link(type: LinkType.playstore, url: "https://play.google.com/store/apps/details?id=srl.digit.balance"),
        Link(type: LinkType.web, url: "https://www.balancemobile.it"),
      ],
      tags: ["Dart", "Flutter"],
    ),
    Project(
      title: 'project_tasky_title'.tr(),
      description: 'project_tasky_description'.tr(),
      images: [
        "assets/images/tasky/home_page.png",
        "assets/images/tasky/edit_page.png",
        "assets/images/tasky/comments_detail.png"
      ],
      links: [
        Link(type: LinkType.github, url: "https://github.com/Supercaly/ASPDM-Project"),
        Link(type: LinkType.web, url: "https://aspdm-project.web.app/"),
      ],
      tags: ["Dart", "Flutter"],
    ),
    Project(
      title: 'project_petify_title'.tr(),
      description: 'project_petify_description'.tr(),
      links: [Link(type: LinkType.playstore, url: "https://play.google.com/store/apps/details?id=com.supercaly.petify")],
      images: [
        "assets/images/tasky/home_page.png",
        "assets/images/tasky/edit_page.png",
        "assets/images/tasky/comments_detail.png"
      ],
      tags: ["Android"],
    ),
  ];
}
