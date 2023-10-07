// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'buzzer_details_screen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BuzzerDetailsScreenState {
  BuzzerDate get date => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BuzzerDetailsScreenStateCopyWith<BuzzerDetailsScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuzzerDetailsScreenStateCopyWith<$Res> {
  factory $BuzzerDetailsScreenStateCopyWith(BuzzerDetailsScreenState value,
          $Res Function(BuzzerDetailsScreenState) then) =
      _$BuzzerDetailsScreenStateCopyWithImpl<$Res, BuzzerDetailsScreenState>;
  @useResult
  $Res call({BuzzerDate date});

  $BuzzerDateCopyWith<$Res> get date;
}

/// @nodoc
class _$BuzzerDetailsScreenStateCopyWithImpl<$Res,
        $Val extends BuzzerDetailsScreenState>
    implements $BuzzerDetailsScreenStateCopyWith<$Res> {
  _$BuzzerDetailsScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as BuzzerDate,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BuzzerDateCopyWith<$Res> get date {
    return $BuzzerDateCopyWith<$Res>(_value.date, (value) {
      return _then(_value.copyWith(date: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BuzzerDetailsScreenStateCopyWith<$Res>
    implements $BuzzerDetailsScreenStateCopyWith<$Res> {
  factory _$$_BuzzerDetailsScreenStateCopyWith(
          _$_BuzzerDetailsScreenState value,
          $Res Function(_$_BuzzerDetailsScreenState) then) =
      __$$_BuzzerDetailsScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuzzerDate date});

  @override
  $BuzzerDateCopyWith<$Res> get date;
}

/// @nodoc
class __$$_BuzzerDetailsScreenStateCopyWithImpl<$Res>
    extends _$BuzzerDetailsScreenStateCopyWithImpl<$Res,
        _$_BuzzerDetailsScreenState>
    implements _$$_BuzzerDetailsScreenStateCopyWith<$Res> {
  __$$_BuzzerDetailsScreenStateCopyWithImpl(_$_BuzzerDetailsScreenState _value,
      $Res Function(_$_BuzzerDetailsScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$_BuzzerDetailsScreenState(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as BuzzerDate,
    ));
  }
}

/// @nodoc

class _$_BuzzerDetailsScreenState implements _BuzzerDetailsScreenState {
  const _$_BuzzerDetailsScreenState({required this.date});

  @override
  final BuzzerDate date;

  @override
  String toString() {
    return 'BuzzerDetailsScreenState(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BuzzerDetailsScreenState &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BuzzerDetailsScreenStateCopyWith<_$_BuzzerDetailsScreenState>
      get copyWith => __$$_BuzzerDetailsScreenStateCopyWithImpl<
          _$_BuzzerDetailsScreenState>(this, _$identity);
}

abstract class _BuzzerDetailsScreenState implements BuzzerDetailsScreenState {
  const factory _BuzzerDetailsScreenState({required final BuzzerDate date}) =
      _$_BuzzerDetailsScreenState;

  @override
  BuzzerDate get date;
  @override
  @JsonKey(ignore: true)
  _$$_BuzzerDetailsScreenStateCopyWith<_$_BuzzerDetailsScreenState>
      get copyWith => throw _privateConstructorUsedError;
}
