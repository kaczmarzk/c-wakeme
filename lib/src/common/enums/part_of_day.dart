import 'package:flutter/cupertino.dart';

enum PartOfDay {
  morning,
  afternoon,
  evening;

  String name(BuildContext context) => switch (this) {
        PartOfDay.morning => 'morning',
        PartOfDay.afternoon => 'afternoon',
        PartOfDay.evening => 'evening',
      };
}
