import 'package:boilerplate_getx/features/auth/controller/auth_controller.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import 'package:boilerplate_getx/core/handler/dio_handler.dart';
import 'package:boilerplate_getx/core/utils/shared_prefs.dart';
import 'package:boilerplate_getx/features/auth/data/remote/services/auth_service.dart';
import 'package:boilerplate_getx/features/auth/data/repository/auth_repository.dart';
import 'package:boilerplate_getx/features/auth/data/repository/auth_repository_impl.dart';
import 'package:boilerplate_getx/features/auth/domain/usecase/auth_login_usecase.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() async {
    final prefs = await SharedPrefs.getInstance();
    Get.lazyPut(() => prefs);
    Get.lazyPut<Dio>(() => DioHandler().dio, fenix: true);

    // Services injection
    Get.lazyPut<AuthService>(
      () => AuthServiceImpl(Get.find()),
    );

    // Repository injection
    Get.lazyPut<AuthRepository>(
      () => AuthRepositoryImpl(Get.find()),
    );

    // Usecase injection
    Get.lazyPut<AuthLoginUsecase>(
      () => AuthLoginUsecase(Get.find()),
    );

    // Controller injection
    Get.lazyPut<AuthController>(
      () => AuthController(Get.find()),
    );
  }
}
