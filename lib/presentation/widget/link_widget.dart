import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:portfolio/domain/link.dart';

class LinkWidget extends StatelessWidget {
  final Link link;

  const LinkWidget({
    Key? key,
    required this.link,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(_mapLinkToIcon()),
      onPressed: () {},
    );
  }

  IconData _mapLinkToIcon() {
    switch (link.type) {
      case LinkType.github:
        return FeatherIcons.github;
      case LinkType.facebook:
        return FeatherIcons.facebook;
      case LinkType.instagram:
        return FeatherIcons.instagram;
      case LinkType.twitter:
        return FeatherIcons.twitter;
      case LinkType.linkedin:
        return FeatherIcons.linkedin;
      case LinkType.playstore:
        return FeatherIcons.play;
      case LinkType.phone:
        return FeatherIcons.phone;
      case LinkType.email:
        return FeatherIcons.mail;
    }
  }
}
