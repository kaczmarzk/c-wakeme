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
  AlarmDetailsScreenSignal? get signal => throw _privateConstructorUsedError;

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
  $Res call({AlarmEntity alarm, AlarmDetailsScreenSignal? signal});

  $AlarmEntityCopyWith<$Res> get alarm;
  $AlarmDetailsScreenSignalCopyWith<$Res>? get signal;
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
    Object? signal = freezed,
  }) {
    return _then(_value.copyWith(
      alarm: null == alarm
          ? _value.alarm
          : alarm // ignore: cast_nullable_to_non_nullable
              as AlarmEntity,
      signal: freezed == signal
          ? _value.signal
          : signal // ignore: cast_nullable_to_non_nullable
              as AlarmDetailsScreenSignal?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AlarmEntityCopyWith<$Res> get alarm {
    return $AlarmEntityCopyWith<$Res>(_value.alarm, (value) {
      return _then(_value.copyWith(alarm: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AlarmDetailsScreenSignalCopyWith<$Res>? get signal {
    if (_value.signal == null) {
      return null;
    }

    return $AlarmDetailsScreenSignalCopyWith<$Res>(_value.signal!, (value) {
      return _then(_value.copyWith(signal: value) as $Val);
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
  $Res call({AlarmEntity alarm, AlarmDetailsScreenSignal? signal});

  @override
  $AlarmEntityCopyWith<$Res> get alarm;
  @override
  $AlarmDetailsScreenSignalCopyWith<$Res>? get signal;
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
    Object? signal = freezed,
  }) {
    return _then(_$_AlarmDetailsScreenState(
      alarm: null == alarm
          ? _value.alarm
          : alarm // ignore: cast_nullable_to_non_nullable
              as AlarmEntity,
      signal: freezed == signal
          ? _value.signal
          : signal // ignore: cast_nullable_to_non_nullable
              as AlarmDetailsScreenSignal?,
    ));
  }
}

/// @nodoc

class _$_AlarmDetailsScreenState implements _AlarmDetailsScreenState {
  const _$_AlarmDetailsScreenState({required this.alarm, this.signal});

  @override
  final AlarmEntity alarm;
  @override
  final AlarmDetailsScreenSignal? signal;

  @override
  String toString() {
    return 'AlarmDetailsScreenState(alarm: $alarm, signal: $signal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AlarmDetailsScreenState &&
            (identical(other.alarm, alarm) || other.alarm == alarm) &&
            (identical(other.signal, signal) || other.signal == signal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, alarm, signal);

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
      final AlarmDetailsScreenSignal? signal}) = _$_AlarmDetailsScreenState;

  @override
  AlarmEntity get alarm;
  @override
  AlarmDetailsScreenSignal? get signal;
  @override
  @JsonKey(ignore: true)
  _$$_AlarmDetailsScreenStateCopyWith<_$_AlarmDetailsScreenState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AlarmDetailsScreenSignal {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onSaved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnSaved value) onSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnSaved value)? onSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnSaved value)? onSaved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlarmDetailsScreenSignalCopyWith<$Res> {
  factory $AlarmDetailsScreenSignalCopyWith(AlarmDetailsScreenSignal value,
          $Res Function(AlarmDetailsScreenSignal) then) =
      _$AlarmDetailsScreenSignalCopyWithImpl<$Res, AlarmDetailsScreenSignal>;
}

/// @nodoc
class _$AlarmDetailsScreenSignalCopyWithImpl<$Res,
        $Val extends AlarmDetailsScreenSignal>
    implements $AlarmDetailsScreenSignalCopyWith<$Res> {
  _$AlarmDetailsScreenSignalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_OnSavedCopyWith<$Res> {
  factory _$$_OnSavedCopyWith(
          _$_OnSaved value, $Res Function(_$_OnSaved) then) =
      __$$_OnSavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnSavedCopyWithImpl<$Res>
    extends _$AlarmDetailsScreenSignalCopyWithImpl<$Res, _$_OnSaved>
    implements _$$_OnSavedCopyWith<$Res> {
  __$$_OnSavedCopyWithImpl(_$_OnSaved _value, $Res Function(_$_OnSaved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnSaved implements _OnSaved {
  const _$_OnSaved();

  @override
  String toString() {
    return 'AlarmDetailsScreenSignal.onSaved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnSaved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onSaved,
  }) {
    return onSaved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onSaved,
  }) {
    return onSaved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onSaved,
    required TResult orElse(),
  }) {
    if (onSaved != null) {
      return onSaved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnSaved value) onSaved,
  }) {
    return onSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnSaved value)? onSaved,
  }) {
    return onSaved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnSaved value)? onSaved,
    required TResult orElse(),
  }) {
    if (onSaved != null) {
      return onSaved(this);
    }
    return orElse();
  }
}

abstract class _OnSaved implements AlarmDetailsScreenSignal {
  const factory _OnSaved() = _$_OnSaved;
}
