abstract class CareerEvent {
  final String name;
  final String? location;
  final String? moreInfo;
  final DateTime? startDate;
  final DateTime? endDate;

  CareerEvent(
    this.name,
    this.location,
    this.moreInfo,
    this.startDate,
    this.endDate,
  );
}
