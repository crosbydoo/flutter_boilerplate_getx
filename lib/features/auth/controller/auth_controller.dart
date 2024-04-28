import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:boilerplate_getx/features/auth/data/remote/requests/login_request.dart';
import 'package:boilerplate_getx/features/auth/domain/usecase/auth_login_usecase.dart';
import 'package:boilerplate_getx/features/home/presentation/screens/home_screen.dart';

class AuthController extends GetxController {
  AuthController(this._loginUsecase);

  final AuthLoginUsecase _loginUsecase;

  RxBool loginLoading = false.obs;

  Future<void> login(LoginRequest request) async {
    loginLoading(true);
    try {
      final failureorSuccess = await _loginUsecase.call(request);

      await failureorSuccess.fold(
        (error) async {
          loginLoading(false);
          Get.snackbar(
            'Error',
            '$error',
            backgroundColor: Colors.red,
            colorText: Colors.white,
          );
          return error;
        },
        (data) async {
          loginLoading(false);
          Get.snackbar(
            'Success',
            'Login Berhasil',
            backgroundColor: Colors.greenAccent,
            colorText: Colors.white,
          );
          Get.offNamed(HomeScreen.routeName);
        },
      );
    } catch (e) {
      loginLoading(false);
      Get.snackbar(
        'Failure',
        'Email atau Password yang anda masukan salah',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }
}
