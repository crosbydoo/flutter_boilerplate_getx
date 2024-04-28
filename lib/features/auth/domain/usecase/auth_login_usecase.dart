import 'package:dartz/dartz.dart';

import 'package:boilerplate_getx/core/error/failures.dart';
import 'package:boilerplate_getx/core/handler/usecase_handler.dart';
import 'package:boilerplate_getx/features/auth/data/remote/requests/login_request.dart';
import 'package:boilerplate_getx/features/auth/data/repository/auth_repository.dart';
import 'package:boilerplate_getx/features/auth/domain/mapper/login_mapper.dart';

class AuthLoginUsecase extends UseCase<LoginMapper, LoginRequest> {
  AuthLoginUsecase(this.loginRepository);
  final AuthRepository loginRepository;
  @override
  Future<Either<Failure, LoginMapper>> call(LoginRequest params) {
    return loginRepository.login(params);
  }
}
