import 'package:arganzwina/utils/translations/app_translations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'helper/binding.dart';
import 'utils/style.dart';
import 'view/control_view.dart';

Future<void> main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: colorCustom, fontFamily: 'hanimation'),
      home: const ControlView(),
      translations: Translation(),
      locale: const Locale('ar'),
      fallbackLocale: const Locale('ar'),
      initialBinding: Binding(),
    );
  }
}
