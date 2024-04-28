import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:boilerplate_getx/core/error/failures.dart';
import 'package:boilerplate_getx/features/auth/data/remote/requests/login_request.dart';
import 'package:boilerplate_getx/features/auth/data/remote/services/auth_service.dart';
import 'package:boilerplate_getx/features/auth/data/repository/auth_repository.dart';
import 'package:boilerplate_getx/features/auth/domain/mapper/login_mapper.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this.service);

  final AuthService service;

  @override
  Future<Either<Failure, LoginMapper>> login(LoginRequest request) async {
    try {
      final remoteActivity = await service.login(request);

      return Right(remoteActivity);
    } on DioException catch (e) {
      final serverFailure = e.response != null
          ? ServerFailure.fromJson(e.response!.data as Map<String, dynamic>)
          : ServerFailure(e.message ?? 'Dio request failed');
      return Left(serverFailure);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
