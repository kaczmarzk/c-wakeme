// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'buzzer_date.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BuzzerDate {
  Set<Weekday> get repeat => throw _privateConstructorUsedError;
  int get hour => throw _privateConstructorUsedError;
  int get minute => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BuzzerDateCopyWith<BuzzerDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuzzerDateCopyWith<$Res> {
  factory $BuzzerDateCopyWith(
          BuzzerDate value, $Res Function(BuzzerDate) then) =
      _$BuzzerDateCopyWithImpl<$Res, BuzzerDate>;
  @useResult
  $Res call({Set<Weekday> repeat, int hour, int minute});
}

/// @nodoc
class _$BuzzerDateCopyWithImpl<$Res, $Val extends BuzzerDate>
    implements $BuzzerDateCopyWith<$Res> {
  _$BuzzerDateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repeat = null,
    Object? hour = null,
    Object? minute = null,
  }) {
    return _then(_value.copyWith(
      repeat: null == repeat
          ? _value.repeat
          : repeat // ignore: cast_nullable_to_non_nullable
              as Set<Weekday>,
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as int,
      minute: null == minute
          ? _value.minute
          : minute // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BuzzerDateCopyWith<$Res>
    implements $BuzzerDateCopyWith<$Res> {
  factory _$$_BuzzerDateCopyWith(
          _$_BuzzerDate value, $Res Function(_$_BuzzerDate) then) =
      __$$_BuzzerDateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Set<Weekday> repeat, int hour, int minute});
}

/// @nodoc
class __$$_BuzzerDateCopyWithImpl<$Res>
    extends _$BuzzerDateCopyWithImpl<$Res, _$_BuzzerDate>
    implements _$$_BuzzerDateCopyWith<$Res> {
  __$$_BuzzerDateCopyWithImpl(
      _$_BuzzerDate _value, $Res Function(_$_BuzzerDate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repeat = null,
    Object? hour = null,
    Object? minute = null,
  }) {
    return _then(_$_BuzzerDate(
      repeat: null == repeat
          ? _value._repeat
          : repeat // ignore: cast_nullable_to_non_nullable
              as Set<Weekday>,
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as int,
      minute: null == minute
          ? _value.minute
          : minute // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_BuzzerDate extends _BuzzerDate {
  const _$_BuzzerDate(
      {required final Set<Weekday> repeat,
      required this.hour,
      required this.minute})
      : _repeat = repeat,
        super._();

  final Set<Weekday> _repeat;
  @override
  Set<Weekday> get repeat {
    if (_repeat is EqualUnmodifiableSetView) return _repeat;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_repeat);
  }

  @override
  final int hour;
  @override
  final int minute;

  @override
  String toString() {
    return 'BuzzerDate(repeat: $repeat, hour: $hour, minute: $minute)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BuzzerDate &&
            const DeepCollectionEquality().equals(other._repeat, _repeat) &&
            (identical(other.hour, hour) || other.hour == hour) &&
            (identical(other.minute, minute) || other.minute == minute));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_repeat), hour, minute);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BuzzerDateCopyWith<_$_BuzzerDate> get copyWith =>
      __$$_BuzzerDateCopyWithImpl<_$_BuzzerDate>(this, _$identity);
}

abstract class _BuzzerDate extends BuzzerDate {
  const factory _BuzzerDate(
      {required final Set<Weekday> repeat,
      required final int hour,
      required final int minute}) = _$_BuzzerDate;
  const _BuzzerDate._() : super._();

  @override
  Set<Weekday> get repeat;
  @override
  int get hour;
  @override
  int get minute;
  @override
  @JsonKey(ignore: true)
  _$$_BuzzerDateCopyWith<_$_BuzzerDate> get copyWith =>
      throw _privateConstructorUsedError;
}
