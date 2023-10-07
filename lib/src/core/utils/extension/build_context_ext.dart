import 'package:flutter/material.dart';

extension BuildContextExt on BuildContext {
  MediaQueryData get mq => MediaQuery.of(this);
}
