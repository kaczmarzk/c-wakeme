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

  static Set<Weekday> get weekdays => {Weekday.monday, Weekday.tuesday, Weekday.wednesday, Weekday.thursday, Weekday.friday};

  static Set<Weekday> get weekends => {Weekday.saturday, Weekday.sunday};

  static Set<Weekday> get every => values.toSet();
}
