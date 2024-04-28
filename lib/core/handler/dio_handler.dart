import 'package:dio/dio.dart';

import 'package:boilerplate_getx/core/constants/api_url.dart';

class DioHandler {
  DioHandler();

  Dio get dio => _getDio();

  Dio _getDio() {
    final header = <String, dynamic>{};

    final options = BaseOptions(
      baseUrl: ApiUrl.baseUrl,
      receiveDataWhenStatusError: true,
      headers: header,
    );

    final dio = Dio(options);

    dio.interceptors.addAll(
      <Interceptor>[
        _loggingInterceptor(),
        _queuedInterceptorsWrapper(),
      ],
    );

    dio.interceptors.add(_queuedInterceptorsWrapper());

    return dio;
  }

  QueuedInterceptorsWrapper _queuedInterceptorsWrapper() {
    return QueuedInterceptorsWrapper(
      onResponse: (response, handler) {
        return handler.next(response);
      },
      onRequest: (options, handler) {
        return handler.next(options);
      },
      onError: (error, handler) async {
        if (unAuthorized(error)) {
        } else {
          return handler.next(error);
        }
      },
    );
  }

  bool unAuthorized(DioException error) => error.response?.statusCode == 401;

  Interceptor _loggingInterceptor() {
    return InterceptorsWrapper(
      onResponse: (response, handler) {
        return handler.next(response); // continue
      },
      onError: (error, handler) async {
        if (error.response?.statusCode == 500 ||
            error.response?.statusCode == 501 ||
            error.response?.statusCode == 502 ||
            error.response?.statusCode == 503) {
          // g.Get.to(() => const ServerMaintenanceScreen());
        }

        // Do something with response error

        return handler.next(error); //continue
      },
    );
  }
}
