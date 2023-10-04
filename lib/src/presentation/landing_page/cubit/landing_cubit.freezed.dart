// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'landing_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LandingState {
  List<Buzzer> get buzzers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LandingStateCopyWith<LandingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LandingStateCopyWith<$Res> {
  factory $LandingStateCopyWith(
          LandingState value, $Res Function(LandingState) then) =
      _$LandingStateCopyWithImpl<$Res, LandingState>;
  @useResult
  $Res call({List<Buzzer> buzzers});
}

/// @nodoc
class _$LandingStateCopyWithImpl<$Res, $Val extends LandingState>
    implements $LandingStateCopyWith<$Res> {
  _$LandingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buzzers = null,
  }) {
    return _then(_value.copyWith(
      buzzers: null == buzzers
          ? _value.buzzers
          : buzzers // ignore: cast_nullable_to_non_nullable
              as List<Buzzer>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LandingStateCopyWith<$Res>
    implements $LandingStateCopyWith<$Res> {
  factory _$$_LandingStateCopyWith(
          _$_LandingState value, $Res Function(_$_LandingState) then) =
      __$$_LandingStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Buzzer> buzzers});
}

/// @nodoc
class __$$_LandingStateCopyWithImpl<$Res>
    extends _$LandingStateCopyWithImpl<$Res, _$_LandingState>
    implements _$$_LandingStateCopyWith<$Res> {
  __$$_LandingStateCopyWithImpl(
      _$_LandingState _value, $Res Function(_$_LandingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buzzers = null,
  }) {
    return _then(_$_LandingState(
      buzzers: null == buzzers
          ? _value._buzzers
          : buzzers // ignore: cast_nullable_to_non_nullable
              as List<Buzzer>,
    ));
  }
}

/// @nodoc

class _$_LandingState implements _LandingState {
  const _$_LandingState({required final List<Buzzer> buzzers})
      : _buzzers = buzzers;

  final List<Buzzer> _buzzers;
  @override
  List<Buzzer> get buzzers {
    if (_buzzers is EqualUnmodifiableListView) return _buzzers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_buzzers);
  }

  @override
  String toString() {
    return 'LandingState(buzzers: $buzzers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LandingState &&
            const DeepCollectionEquality().equals(other._buzzers, _buzzers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_buzzers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LandingStateCopyWith<_$_LandingState> get copyWith =>
      __$$_LandingStateCopyWithImpl<_$_LandingState>(this, _$identity);
}

abstract class _LandingState implements LandingState {
  const factory _LandingState({required final List<Buzzer> buzzers}) =
      _$_LandingState;

  @override
  List<Buzzer> get buzzers;
  @override
  @JsonKey(ignore: true)
  _$$_LandingStateCopyWith<_$_LandingState> get copyWith =>
      throw _privateConstructorUsedError;
}
