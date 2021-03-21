import 'package:portfolio/domain/study.dart';
import 'package:portfolio/domain/work.dart';

class Career {
  final List<Work> works;
  final List<Study> study;

  Career({
    required this.works,
    required this.study,
  });
}
