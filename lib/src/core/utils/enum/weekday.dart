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
    return values[weekday - 1];
  }
}
