import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:boilerplate_getx/app/splashscreen.dart';
import 'package:boilerplate_getx/core/routes/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
      ),
      getPages: Nav.routes,
      home: const Splashscreen(),
    );
  }
}
