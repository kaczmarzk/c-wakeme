import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.unexpected() = UnexpectedFailure;

  const factory Failure.notFound() = NotFoundFailure;

  const factory Failure.conflict() = ConflictFailure;

  const factory Failure.fatal() = FatalFailure;
}
