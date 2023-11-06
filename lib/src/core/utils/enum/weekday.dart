
enum Weekday {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday;

  static Set<Weekday> get weekdays => {Weekday.monday, Weekday.tuesday, Weekday.wednesday, Weekday.thursday, Weekday.friday};

  static Set<Weekday> get weekends => {Weekday.saturday, Weekday.sunday};

  static Set<Weekday> get every => values.toSet();
}
