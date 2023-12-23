// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alarm_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AlarmEntity {
  String get uuid => throw _privateConstructorUsedError;
  AlarmTimeEntity get time => throw _privateConstructorUsedError;
  Set<Weekday>? get repeated => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AlarmEntityCopyWith<AlarmEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlarmEntityCopyWith<$Res> {
  factory $AlarmEntityCopyWith(
          AlarmEntity value, $Res Function(AlarmEntity) then) =
      _$AlarmEntityCopyWithImpl<$Res, AlarmEntity>;
  @useResult
  $Res call(
      {String uuid,
      AlarmTimeEntity time,
      Set<Weekday>? repeated,
      String? name});

  $AlarmTimeEntityCopyWith<$Res> get time;
}

/// @nodoc
class _$AlarmEntityCopyWithImpl<$Res, $Val extends AlarmEntity>
    implements $AlarmEntityCopyWith<$Res> {
  _$AlarmEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? time = null,
    Object? repeated = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as AlarmTimeEntity,
      repeated: freezed == repeated
          ? _value.repeated
          : repeated // ignore: cast_nullable_to_non_nullable
              as Set<Weekday>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AlarmTimeEntityCopyWith<$Res> get time {
    return $AlarmTimeEntityCopyWith<$Res>(_value.time, (value) {
      return _then(_value.copyWith(time: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AlarmEntityCopyWith<$Res>
    implements $AlarmEntityCopyWith<$Res> {
  factory _$$_AlarmEntityCopyWith(
          _$_AlarmEntity value, $Res Function(_$_AlarmEntity) then) =
      __$$_AlarmEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uuid,
      AlarmTimeEntity time,
      Set<Weekday>? repeated,
      String? name});

  @override
  $AlarmTimeEntityCopyWith<$Res> get time;
}

/// @nodoc
class __$$_AlarmEntityCopyWithImpl<$Res>
    extends _$AlarmEntityCopyWithImpl<$Res, _$_AlarmEntity>
    implements _$$_AlarmEntityCopyWith<$Res> {
  __$$_AlarmEntityCopyWithImpl(
      _$_AlarmEntity _value, $Res Function(_$_AlarmEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? time = null,
    Object? repeated = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_AlarmEntity(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as AlarmTimeEntity,
      repeated: freezed == repeated
          ? _value._repeated
          : repeated // ignore: cast_nullable_to_non_nullable
              as Set<Weekday>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AlarmEntity extends _AlarmEntity {
  const _$_AlarmEntity(
      {required this.uuid,
      required this.time,
      final Set<Weekday>? repeated,
      this.name})
      : _repeated = repeated,
        super._();

  @override
  final String uuid;
  @override
  final AlarmTimeEntity time;
  final Set<Weekday>? _repeated;
  @override
  Set<Weekday>? get repeated {
    final value = _repeated;
    if (value == null) return null;
    if (_repeated is EqualUnmodifiableSetView) return _repeated;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(value);
  }

  @override
  final String? name;

  @override
  String toString() {
    return 'AlarmEntity(uuid: $uuid, time: $time, repeated: $repeated, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AlarmEntity &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.time, time) || other.time == time) &&
            const DeepCollectionEquality().equals(other._repeated, _repeated) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uuid, time,
      const DeepCollectionEquality().hash(_repeated), name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AlarmEntityCopyWith<_$_AlarmEntity> get copyWith =>
      __$$_AlarmEntityCopyWithImpl<_$_AlarmEntity>(this, _$identity);
}

abstract class _AlarmEntity extends AlarmEntity {
  const factory _AlarmEntity(
      {required final String uuid,
      required final AlarmTimeEntity time,
      final Set<Weekday>? repeated,
      final String? name}) = _$_AlarmEntity;
  const _AlarmEntity._() : super._();

  @override
  String get uuid;
  @override
  AlarmTimeEntity get time;
  @override
  Set<Weekday>? get repeated;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_AlarmEntityCopyWith<_$_AlarmEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
