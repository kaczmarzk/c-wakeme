extension DateTimeExtension on DateTime {
  DateTime next(int day) {
    return DateTime(
      this.year,
      this.month,
      this.day + (day == weekday ? 7 : (day - weekday) % DateTime.daysPerWeek),
    );
  }

  DateTime previous(int day) {
    return DateTime(
      this.year,
      this.month,
      this.day - (day == weekday ? 7 : (weekday - day) % DateTime.daysPerWeek),
    );
  }
}
