import 'package:get/get.dart';

import 'package:dirbbox/app/modules/home/bindings/home_binding.dart';
import 'package:dirbbox/app/modules/home/views/home_view.dart';
import 'package:dirbbox/app/modules/login/bindings/login_binding.dart';
import 'package:dirbbox/app/modules/login/views/login_view.dart';
import 'package:dirbbox/app/modules/profile/bindings/profile_binding.dart';
import 'package:dirbbox/app/modules/profile/views/profile_view.dart';
import 'package:dirbbox/app/modules/setting/bindings/setting_binding.dart';
import 'package:dirbbox/app/modules/setting/views/setting_view.dart';
import 'package:dirbbox/app/modules/storage/bindings/storage_binding.dart';
import 'package:dirbbox/app/modules/storage/views/storage_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: _Paths.STORAGE,
      page: () => StorageView(),
      binding: StorageBinding(),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: _Paths.SETTING,
      page: () => SettingView(),
      binding: SettingBinding(),
      transition: Transition.rightToLeftWithFade,
    ),
  ];
}
