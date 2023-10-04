// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() notFound,
    required TResult Function() conflict,
    required TResult Function() fatal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? notFound,
    TResult? Function()? conflict,
    TResult? Function()? fatal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? notFound,
    TResult Function()? conflict,
    TResult Function()? fatal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnexpectedFailure value) unexpected,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(ConflictFailure value) conflict,
    required TResult Function(FatalFailure value) fatal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnexpectedFailure value)? unexpected,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(ConflictFailure value)? conflict,
    TResult? Function(FatalFailure value)? fatal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnexpectedFailure value)? unexpected,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(ConflictFailure value)? conflict,
    TResult Function(FatalFailure value)? fatal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UnexpectedFailureCopyWith<$Res> {
  factory _$$UnexpectedFailureCopyWith(
          _$UnexpectedFailure value, $Res Function(_$UnexpectedFailure) then) =
      __$$UnexpectedFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnexpectedFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$UnexpectedFailure>
    implements _$$UnexpectedFailureCopyWith<$Res> {
  __$$UnexpectedFailureCopyWithImpl(
      _$UnexpectedFailure _value, $Res Function(_$UnexpectedFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnexpectedFailure implements UnexpectedFailure {
  const _$UnexpectedFailure();

  @override
  String toString() {
    return 'Failure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnexpectedFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() notFound,
    required TResult Function() conflict,
    required TResult Function() fatal,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? notFound,
    TResult? Function()? conflict,
    TResult? Function()? fatal,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? notFound,
    TResult Function()? conflict,
    TResult Function()? fatal,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnexpectedFailure value) unexpected,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(ConflictFailure value) conflict,
    required TResult Function(FatalFailure value) fatal,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnexpectedFailure value)? unexpected,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(ConflictFailure value)? conflict,
    TResult? Function(FatalFailure value)? fatal,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnexpectedFailure value)? unexpected,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(ConflictFailure value)? conflict,
    TResult Function(FatalFailure value)? fatal,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class UnexpectedFailure implements Failure {
  const factory UnexpectedFailure() = _$UnexpectedFailure;
}

/// @nodoc
abstract class _$$NotFoundFailureCopyWith<$Res> {
  factory _$$NotFoundFailureCopyWith(
          _$NotFoundFailure value, $Res Function(_$NotFoundFailure) then) =
      __$$NotFoundFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotFoundFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NotFoundFailure>
    implements _$$NotFoundFailureCopyWith<$Res> {
  __$$NotFoundFailureCopyWithImpl(
      _$NotFoundFailure _value, $Res Function(_$NotFoundFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotFoundFailure implements NotFoundFailure {
  const _$NotFoundFailure();

  @override
  String toString() {
    return 'Failure.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotFoundFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() notFound,
    required TResult Function() conflict,
    required TResult Function() fatal,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? notFound,
    TResult? Function()? conflict,
    TResult? Function()? fatal,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? notFound,
    TResult Function()? conflict,
    TResult Function()? fatal,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnexpectedFailure value) unexpected,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(ConflictFailure value) conflict,
    required TResult Function(FatalFailure value) fatal,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnexpectedFailure value)? unexpected,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(ConflictFailure value)? conflict,
    TResult? Function(FatalFailure value)? fatal,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnexpectedFailure value)? unexpected,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(ConflictFailure value)? conflict,
    TResult Function(FatalFailure value)? fatal,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFoundFailure implements Failure {
  const factory NotFoundFailure() = _$NotFoundFailure;
}

/// @nodoc
abstract class _$$ConflictFailureCopyWith<$Res> {
  factory _$$ConflictFailureCopyWith(
          _$ConflictFailure value, $Res Function(_$ConflictFailure) then) =
      __$$ConflictFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConflictFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ConflictFailure>
    implements _$$ConflictFailureCopyWith<$Res> {
  __$$ConflictFailureCopyWithImpl(
      _$ConflictFailure _value, $Res Function(_$ConflictFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConflictFailure implements ConflictFailure {
  const _$ConflictFailure();

  @override
  String toString() {
    return 'Failure.conflict()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConflictFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() notFound,
    required TResult Function() conflict,
    required TResult Function() fatal,
  }) {
    return conflict();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? notFound,
    TResult? Function()? conflict,
    TResult? Function()? fatal,
  }) {
    return conflict?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? notFound,
    TResult Function()? conflict,
    TResult Function()? fatal,
    required TResult orElse(),
  }) {
    if (conflict != null) {
      return conflict();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnexpectedFailure value) unexpected,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(ConflictFailure value) conflict,
    required TResult Function(FatalFailure value) fatal,
  }) {
    return conflict(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnexpectedFailure value)? unexpected,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(ConflictFailure value)? conflict,
    TResult? Function(FatalFailure value)? fatal,
  }) {
    return conflict?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnexpectedFailure value)? unexpected,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(ConflictFailure value)? conflict,
    TResult Function(FatalFailure value)? fatal,
    required TResult orElse(),
  }) {
    if (conflict != null) {
      return conflict(this);
    }
    return orElse();
  }
}

abstract class ConflictFailure implements Failure {
  const factory ConflictFailure() = _$ConflictFailure;
}

/// @nodoc
abstract class _$$FatalFailureCopyWith<$Res> {
  factory _$$FatalFailureCopyWith(
          _$FatalFailure value, $Res Function(_$FatalFailure) then) =
      __$$FatalFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FatalFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$FatalFailure>
    implements _$$FatalFailureCopyWith<$Res> {
  __$$FatalFailureCopyWithImpl(
      _$FatalFailure _value, $Res Function(_$FatalFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FatalFailure implements FatalFailure {
  const _$FatalFailure();

  @override
  String toString() {
    return 'Failure.fatal()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FatalFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function() notFound,
    required TResult Function() conflict,
    required TResult Function() fatal,
  }) {
    return fatal();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function()? notFound,
    TResult? Function()? conflict,
    TResult? Function()? fatal,
  }) {
    return fatal?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function()? notFound,
    TResult Function()? conflict,
    TResult Function()? fatal,
    required TResult orElse(),
  }) {
    if (fatal != null) {
      return fatal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnexpectedFailure value) unexpected,
    required TResult Function(NotFoundFailure value) notFound,
    required TResult Function(ConflictFailure value) conflict,
    required TResult Function(FatalFailure value) fatal,
  }) {
    return fatal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnexpectedFailure value)? unexpected,
    TResult? Function(NotFoundFailure value)? notFound,
    TResult? Function(ConflictFailure value)? conflict,
    TResult? Function(FatalFailure value)? fatal,
  }) {
    return fatal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnexpectedFailure value)? unexpected,
    TResult Function(NotFoundFailure value)? notFound,
    TResult Function(ConflictFailure value)? conflict,
    TResult Function(FatalFailure value)? fatal,
    required TResult orElse(),
  }) {
    if (fatal != null) {
      return fatal(this);
    }
    return orElse();
  }
}

abstract class FatalFailure implements Failure {
  const factory FatalFailure() = _$FatalFailure;
}
