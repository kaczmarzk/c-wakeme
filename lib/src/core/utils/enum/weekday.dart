enum Weekday {
  sunday,
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday;

  static Weekday get now {
    final weekday = DateTime.now().weekday;

    /// datetime weekday starts with monday, our starts with sunday
    /// below is statement to avoid out of index cause that
    if (weekday == Weekday.values.length) Weekday.values.first;
    return Weekday.values[weekday];
  }

  static Weekday get next {
    final nowIndex = values.indexOf(now);
    if (nowIndex == values.length - 1) return values[0];
    return values[nowIndex + 1];
  }
}
