import 'package:get/get.dart';
import 'package:hacker_kernel/auth%20/bindings/profile_binding.dart';
import 'package:hacker_kernel/auth%20/views/is_signed_in.dart';
import 'package:hacker_kernel/screens/karma.dart';
import 'package:hacker_kernel/screens/login_view.dart';
import 'package:hacker_kernel/screens/profile_page.dart';
part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.ISSIGNED_IN;

  static final routes = [
    GetPage(
      name: Routes.PROFILE_PAGE,
      page: () => ProfilePage(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: Routes.KARMA,
      page: () => KarmaPage(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: Routes.ISSIGNED_IN,
      page: () => IsSignedIn(),
      binding: ProfileBinding(),
    ),
  ];
}
