enum Weekday {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday;

  static Weekday get now {
    final weekday = DateTime.now().weekday;
    return Weekday.values[weekday - 1];
  }

  static Weekday get next {
    final nowIndex = values.indexOf(now);
    if (nowIndex == values.length - 1) return values.first;
    return values[nowIndex + 1];
  }

  static List<Weekday> get weekdays => Weekday.values.sublist(0, Weekday.values.length - 2);

  static List<Weekday> get weekend => [Weekday.saturday, Weekday.sunday];
}
