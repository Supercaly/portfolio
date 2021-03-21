import 'package:portfolio/domain/link.dart';

class Project {
  final String title;
  final String? description;
  final List<Link>? links;
  final List<String>? tags;
  final List<String>? images;

  Project({
    required this.title,
    this.description,
    this.links,
    this.tags,
    this.images,
  });
}
