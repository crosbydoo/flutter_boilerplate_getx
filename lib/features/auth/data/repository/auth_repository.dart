import 'package:boilerplate_getx/core/error/failures.dart';
import 'package:boilerplate_getx/features/auth/data/remote/requests/login_request.dart';
import 'package:boilerplate_getx/features/auth/domain/mapper/login_mapper.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<Failure, LoginMapper>> login(LoginRequest body);
}
