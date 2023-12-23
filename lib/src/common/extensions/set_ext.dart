import 'package:flutter/foundation.dart' as foundation;

extension SetExt<T> on Set<T> {
  bool equals(Set<T> value) => foundation.setEquals<T>(this, value);
}
