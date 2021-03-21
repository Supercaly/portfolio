enum LinkType {
  github,
  facebook,
  instagram,
  twitter,
  linkedin,
  playstore,
  phone,
  email,
}

class Link {
  final String url;
  final LinkType type;

  Link({
    required this.type,
    required this.url,
  });
}
