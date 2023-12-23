// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_screen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DashboardScreenState {
  List<AlarmEntity> get alarms => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardScreenStateCopyWith<DashboardScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardScreenStateCopyWith<$Res> {
  factory $DashboardScreenStateCopyWith(DashboardScreenState value,
          $Res Function(DashboardScreenState) then) =
      _$DashboardScreenStateCopyWithImpl<$Res, DashboardScreenState>;
  @useResult
  $Res call({List<AlarmEntity> alarms});
}

/// @nodoc
class _$DashboardScreenStateCopyWithImpl<$Res,
        $Val extends DashboardScreenState>
    implements $DashboardScreenStateCopyWith<$Res> {
  _$DashboardScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alarms = null,
  }) {
    return _then(_value.copyWith(
      alarms: null == alarms
          ? _value.alarms
          : alarms // ignore: cast_nullable_to_non_nullable
              as List<AlarmEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DashboardScreenStateCopyWith<$Res>
    implements $DashboardScreenStateCopyWith<$Res> {
  factory _$$_DashboardScreenStateCopyWith(_$_DashboardScreenState value,
          $Res Function(_$_DashboardScreenState) then) =
      __$$_DashboardScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AlarmEntity> alarms});
}

/// @nodoc
class __$$_DashboardScreenStateCopyWithImpl<$Res>
    extends _$DashboardScreenStateCopyWithImpl<$Res, _$_DashboardScreenState>
    implements _$$_DashboardScreenStateCopyWith<$Res> {
  __$$_DashboardScreenStateCopyWithImpl(_$_DashboardScreenState _value,
      $Res Function(_$_DashboardScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alarms = null,
  }) {
    return _then(_$_DashboardScreenState(
      alarms: null == alarms
          ? _value._alarms
          : alarms // ignore: cast_nullable_to_non_nullable
              as List<AlarmEntity>,
    ));
  }
}

/// @nodoc

class _$_DashboardScreenState implements _DashboardScreenState {
  const _$_DashboardScreenState({required final List<AlarmEntity> alarms})
      : _alarms = alarms;

  final List<AlarmEntity> _alarms;
  @override
  List<AlarmEntity> get alarms {
    if (_alarms is EqualUnmodifiableListView) return _alarms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_alarms);
  }

  @override
  String toString() {
    return 'DashboardScreenState(alarms: $alarms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DashboardScreenState &&
            const DeepCollectionEquality().equals(other._alarms, _alarms));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_alarms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DashboardScreenStateCopyWith<_$_DashboardScreenState> get copyWith =>
      __$$_DashboardScreenStateCopyWithImpl<_$_DashboardScreenState>(
          this, _$identity);
}

abstract class _DashboardScreenState implements DashboardScreenState {
  const factory _DashboardScreenState(
      {required final List<AlarmEntity> alarms}) = _$_DashboardScreenState;

  @override
  List<AlarmEntity> get alarms;
  @override
  @JsonKey(ignore: true)
  _$$_DashboardScreenStateCopyWith<_$_DashboardScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
