enum PartOfTheDay {
  morning,
  afternoon,
  evening;
}

extension PartOfTheDayExt on PartOfTheDay {
  String get name => switch (this) {
        PartOfTheDay.morning => 'morning',
        PartOfTheDay.afternoon => 'afternoon',
        PartOfTheDay.evening => 'evening',
      };
}
