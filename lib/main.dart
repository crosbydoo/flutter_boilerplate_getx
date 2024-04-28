import 'package:boilerplate_getx/app/app.dart';
import 'package:boilerplate_getx/core/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox(tokenBox);
  runApp(const App());
}
