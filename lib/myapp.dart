import 'package:get/get.dart';
import 'package:login_screen_with_verification/ui/controller_binder.dart';
import 'package:login_screen_with_verification/ui/screens/login_screen.dart';

abstract class AppRoutes {
  static const login = '/login';
}
class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.login,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
  ];
}