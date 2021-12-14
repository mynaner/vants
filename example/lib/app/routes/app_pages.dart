// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';

import 'package:example/app/modules/button/bindings/button_binding.dart';
import 'package:example/app/modules/button/views/button_view.dart';
import 'package:example/app/modules/home/bindings/home_binding.dart';
import 'package:example/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.BUTTON;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.BUTTON,
      page: () => ButtonView(),
      binding: ButtonBinding(),
    ),
  ];
}
