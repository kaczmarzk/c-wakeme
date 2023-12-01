// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alarm_details_screen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AlarmDetailsScreenState {
  AlarmEntity get alarm => throw _privateConstructorUsedError;
  Set<Weekday> get weekdays => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AlarmDetailsScreenStateCopyWith<AlarmDetailsScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlarmDetailsScreenStateCopyWith<$Res> {
  factory $AlarmDetailsScreenStateCopyWith(AlarmDetailsScreenState value,
          $Res Function(AlarmDetailsScreenState) then) =
      _$AlarmDetailsScreenStateCopyWithImpl<$Res, AlarmDetailsScreenState>;
  @useResult
  $Res call({AlarmEntity alarm, Set<Weekday> weekdays});

  $AlarmEntityCopyWith<$Res> get alarm;
}

/// @nodoc
class _$AlarmDetailsScreenStateCopyWithImpl<$Res,
        $Val extends AlarmDetailsScreenState>
    implements $AlarmDetailsScreenStateCopyWith<$Res> {
  _$AlarmDetailsScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alarm = null,
    Object? weekdays = null,
  }) {
    return _then(_value.copyWith(
      alarm: null == alarm
          ? _value.alarm
          : alarm // ignore: cast_nullable_to_non_nullable
              as AlarmEntity,
      weekdays: null == weekdays
          ? _value.weekdays
          : weekdays // ignore: cast_nullable_to_non_nullable
              as Set<Weekday>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AlarmEntityCopyWith<$Res> get alarm {
    return $AlarmEntityCopyWith<$Res>(_value.alarm, (value) {
      return _then(_value.copyWith(alarm: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AlarmDetailsScreenStateCopyWith<$Res>
    implements $AlarmDetailsScreenStateCopyWith<$Res> {
  factory _$$_AlarmDetailsScreenStateCopyWith(_$_AlarmDetailsScreenState value,
          $Res Function(_$_AlarmDetailsScreenState) then) =
      __$$_AlarmDetailsScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AlarmEntity alarm, Set<Weekday> weekdays});

  @override
  $AlarmEntityCopyWith<$Res> get alarm;
}

/// @nodoc
class __$$_AlarmDetailsScreenStateCopyWithImpl<$Res>
    extends _$AlarmDetailsScreenStateCopyWithImpl<$Res,
        _$_AlarmDetailsScreenState>
    implements _$$_AlarmDetailsScreenStateCopyWith<$Res> {
  __$$_AlarmDetailsScreenStateCopyWithImpl(_$_AlarmDetailsScreenState _value,
      $Res Function(_$_AlarmDetailsScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alarm = null,
    Object? weekdays = null,
  }) {
    return _then(_$_AlarmDetailsScreenState(
      alarm: null == alarm
          ? _value.alarm
          : alarm // ignore: cast_nullable_to_non_nullable
              as AlarmEntity,
      weekdays: null == weekdays
          ? _value._weekdays
          : weekdays // ignore: cast_nullable_to_non_nullable
              as Set<Weekday>,
    ));
  }
}

/// @nodoc

class _$_AlarmDetailsScreenState implements _AlarmDetailsScreenState {
  const _$_AlarmDetailsScreenState(
      {required this.alarm, required final Set<Weekday> weekdays})
      : _weekdays = weekdays;

  @override
  final AlarmEntity alarm;
  final Set<Weekday> _weekdays;
  @override
  Set<Weekday> get weekdays {
    if (_weekdays is EqualUnmodifiableSetView) return _weekdays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_weekdays);
  }

  @override
  String toString() {
    return 'AlarmDetailsScreenState(alarm: $alarm, weekdays: $weekdays)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AlarmDetailsScreenState &&
            (identical(other.alarm, alarm) || other.alarm == alarm) &&
            const DeepCollectionEquality().equals(other._weekdays, _weekdays));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, alarm, const DeepCollectionEquality().hash(_weekdays));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AlarmDetailsScreenStateCopyWith<_$_AlarmDetailsScreenState>
      get copyWith =>
          __$$_AlarmDetailsScreenStateCopyWithImpl<_$_AlarmDetailsScreenState>(
              this, _$identity);
}

abstract class _AlarmDetailsScreenState implements AlarmDetailsScreenState {
  const factory _AlarmDetailsScreenState(
      {required final AlarmEntity alarm,
      required final Set<Weekday> weekdays}) = _$_AlarmDetailsScreenState;

  @override
  AlarmEntity get alarm;
  @override
  Set<Weekday> get weekdays;
  @override
  @JsonKey(ignore: true)
  _$$_AlarmDetailsScreenStateCopyWith<_$_AlarmDetailsScreenState>
      get copyWith => throw _privateConstructorUsedError;
}
