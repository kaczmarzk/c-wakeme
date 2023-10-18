enum PartOfTheDay {
  morning,
  afternoon,
  evening;

  static PartOfTheDay get current {
    final hour = DateTime.now().hour;
    if (hour > 5 && hour < 12) return PartOfTheDay.morning;
    if (hour > 12 && hour < 18) return PartOfTheDay.afternoon;
    return PartOfTheDay.evening;
  }
}

extension PartOfTheDayExt on PartOfTheDay {
  String get name => switch (this) {
        PartOfTheDay.morning => 'morning',
        PartOfTheDay.afternoon => 'afternoon',
        PartOfTheDay.evening => 'evening',
      };
}
