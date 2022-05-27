import 'package:get/get.dart';

import 'package:mypramuka/app/modules/home/bindings/home_binding.dart';
import 'package:mypramuka/app/modules/home/views/home_view.dart';
import 'package:mypramuka/app/modules/latihan/bindings/latihan_binding.dart';
import 'package:mypramuka/app/modules/latihan/views/latihan_view.dart';
import 'package:mypramuka/app/modules/login/bindings/login_binding.dart';
import 'package:mypramuka/app/modules/login/views/login_view.dart';
import 'package:mypramuka/app/modules/materi/bindings/materi_binding.dart';
import 'package:mypramuka/app/modules/materi/views/materi_view.dart';
import 'package:mypramuka/app/modules/pengetahuan/bindings/pengetahuan_binding.dart';
import 'package:mypramuka/app/modules/pengetahuan/views/pengetahuan_view.dart';
import 'package:mypramuka/app/modules/profile/bindings/profile_binding.dart';
import 'package:mypramuka/app/modules/profile/views/profile_view.dart';
import 'package:mypramuka/app/modules/register/bindings/register_binding.dart';
import 'package:mypramuka/app/modules/register/views/register_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.MATERI,
      page: () => MateriView(),
      binding: MateriBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.LATIHAN,
      page: () => LatihanView(),
      binding: LatihanBinding(),
    ),
    GetPage(
      name: _Paths.PENGETAHUAN,
      page: () => PengetahuanView(),
      binding: PengetahuanBinding(),
    ),
  ];
}
