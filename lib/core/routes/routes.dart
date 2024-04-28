import 'package:boilerplate_getx/features/auth/controller/auth_binding.dart';
import 'package:boilerplate_getx/features/auth/presentation/screens/login_screen.dart';
import 'package:boilerplate_getx/features/home/presentation/screens/home_screen.dart';
import 'package:get/get.dart';

class Nav {
  static List<GetPage> routes = [
    // LOGIN
    GetPage(
      name: LoginScreen.routeName,
      binding: AuthBinding(),
      page: () => const LoginScreen(),
      transition: Transition.cupertino,
    ),

    // HOME
    GetPage(
      name: HomeScreen.routeName,
      // binding: AuthBinding(),
      page: () => const HomeScreen(),
      transition: Transition.cupertino,
    ),
  ];
}
