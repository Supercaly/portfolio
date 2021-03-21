import 'package:portfolio/domain/career_event.dart';

class Study extends CareerEvent {
  Study({
    required String name,
    String? location,
    String? moreInfo,
    DateTime? startDate,
    DateTime? endDate,
  }) : super(name, location, moreInfo, startDate, endDate);
}
