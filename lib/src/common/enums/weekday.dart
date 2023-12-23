import 'package:freezed_annotation/freezed_annotation.dart';

enum Weekday {
  @JsonValue(0)
  monday,
  @JsonValue(1)
  tuesday,
  @JsonValue(2)
  wednesday,
  @JsonValue(3)
  thursday,
  @JsonValue(4)
  friday,
  @JsonValue(5)
  saturday,
  @JsonValue(6)
  sunday;

  static Set<Weekday> get weekdays =>
      {Weekday.monday, Weekday.tuesday, Weekday.wednesday, Weekday.thursday, Weekday.friday};

  static Set<Weekday> get weekends => {Weekday.saturday, Weekday.sunday};

  static Set<Weekday> get every => values.toSet();
}
