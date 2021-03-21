import 'package:portfolio/domain/career_event.dart';

class Work extends CareerEvent {
  Work({
    required String name,
    String? location,
    String? moreInfo,
    DateTime? startDate,
    DateTime? endDate,
  }) : super(name, location, moreInfo, startDate, endDate);
}
