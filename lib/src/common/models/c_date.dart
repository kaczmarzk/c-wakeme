import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:wakeme/src/common/models/c_time.dart';

@immutable
class CDate extends Equatable {
  const CDate({
    required this.year,
    required this.month,
    required this.day,
    required this.time,
  });

  factory CDate.fromDt(DateTime dt) => CDate(
        year: dt.year,
        month: dt.month,
        day: dt.day,
        time: CTime.fromDt(dt),
      );

  final int year;
  final int month;
  final int day;
  final CTime time;

  @override
  List<Object> get props => [year, month, day, time];
}
