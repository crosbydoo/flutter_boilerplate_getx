import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'failures.g.dart';

abstract class Failure extends Equatable {
  const Failure(this.message);
  final String message;
}

// General failures
@JsonSerializable(createToJson: false)
class ServerFailure extends Failure {
  const ServerFailure(super.message);

  factory ServerFailure.fromJson(Map<String, dynamic> json) =>
      _$ServerFailureFromJson(json);

  @override
  List<Object?> get props => [message];
}
