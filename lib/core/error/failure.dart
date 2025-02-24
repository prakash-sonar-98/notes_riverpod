import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String? code;
  final String? message;

  const Failure({
    this.code,
    this.message,
  });

  @override
  String toString() => 'Failure(Code: $code, Message: $message)';

  @override
  List<Object?> get props => [code, message];
}

///Failures
class ServerFailure extends Failure {}

class CacheFailure extends Failure {}