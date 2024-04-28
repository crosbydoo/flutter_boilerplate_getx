import 'package:boilerplate_getx/core/constants/api_url.dart';
import 'package:boilerplate_getx/core/constants/constant.dart';
import 'package:boilerplate_getx/core/error/exception.dart';
import 'package:boilerplate_getx/features/auth/data/remote/requests/login_request.dart';
import 'package:boilerplate_getx/features/auth/data/remote/responses/login_response.dart';
import 'package:boilerplate_getx/features/auth/domain/mapper/login_mapper.dart';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';

abstract class AuthService {
  Future<LoginMapper> login(LoginRequest body);
  Future<void> addToken(LoginMapper data);
}

class AuthServiceImpl implements AuthService {
  AuthServiceImpl(this._client);

  final Dio _client;

  @override
  Future<LoginMapper> login(LoginRequest body) async {
    try {
      final loginBody = {
        'username': body.username,
        'password': body.password,
      };

      final response = await _client.post<Map<String, dynamic>>(
        ApiEndpoint.login,
        data: loginBody,
      );
      final box = await Hive.openBox(tokenBox);
      await box.add(LoginResponse.fromJson(response.data!).token);
      // await addToken(LoginResponse.fromJson(response.data!));

      return LoginResponse.fromJson(response.data!);
    } on DioException catch (e) {
      throw DioException(
        requestOptions: e.requestOptions,
        error: e.error,
        response: e.response,
      );
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<void> addToken(LoginMapper data) async {}
}
