// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alarm_time_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AlarmTimeEntity {
  int get hour => throw _privateConstructorUsedError;
  int get minute => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AlarmTimeEntityCopyWith<AlarmTimeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlarmTimeEntityCopyWith<$Res> {
  factory $AlarmTimeEntityCopyWith(
          AlarmTimeEntity value, $Res Function(AlarmTimeEntity) then) =
      _$AlarmTimeEntityCopyWithImpl<$Res, AlarmTimeEntity>;
  @useResult
  $Res call({int hour, int minute});
}

/// @nodoc
class _$AlarmTimeEntityCopyWithImpl<$Res, $Val extends AlarmTimeEntity>
    implements $AlarmTimeEntityCopyWith<$Res> {
  _$AlarmTimeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hour = null,
    Object? minute = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_AlarmTimeEntityCopyWith<$Res>
    implements $AlarmTimeEntityCopyWith<$Res> {
  factory _$$_AlarmTimeEntityCopyWith(
          _$_AlarmTimeEntity value, $Res Function(_$_AlarmTimeEntity) then) =
      __$$_AlarmTimeEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int hour, int minute});
}

/// @nodoc
class __$$_AlarmTimeEntityCopyWithImpl<$Res>
    extends _$AlarmTimeEntityCopyWithImpl<$Res, _$_AlarmTimeEntity>
    implements _$$_AlarmTimeEntityCopyWith<$Res> {
  __$$_AlarmTimeEntityCopyWithImpl(
      _$_AlarmTimeEntity _value, $Res Function(_$_AlarmTimeEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hour = null,
    Object? minute = null,
  }) {
    return _then(_$_AlarmTimeEntity(
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

class _$_AlarmTimeEntity extends _AlarmTimeEntity {
  const _$_AlarmTimeEntity({required this.hour, required this.minute})
      : super._();

  @override
  final int hour;
  @override
  final int minute;

  @override
  String toString() {
    return 'AlarmTimeEntity(hour: $hour, minute: $minute)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AlarmTimeEntity &&
            (identical(other.hour, hour) || other.hour == hour) &&
            (identical(other.minute, minute) || other.minute == minute));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hour, minute);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AlarmTimeEntityCopyWith<_$_AlarmTimeEntity> get copyWith =>
      __$$_AlarmTimeEntityCopyWithImpl<_$_AlarmTimeEntity>(this, _$identity);
}

abstract class _AlarmTimeEntity extends AlarmTimeEntity {
  const factory _AlarmTimeEntity(
      {required final int hour,
      required final int minute}) = _$_AlarmTimeEntity;
  const _AlarmTimeEntity._() : super._();

  @override
  int get hour;
  @override
  int get minute;
  @override
  @JsonKey(ignore: true)
  _$$_AlarmTimeEntityCopyWith<_$_AlarmTimeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
