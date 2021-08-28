import 'package:get/get.dart';
import 'package:hacker_kernel/auth%20/controllers/auth_controller.dart';
import 'package:hacker_kernel/auth%20/controllers/profile_page_controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfilePageController>(
      () => ProfilePageController(),
    );
    Get.lazyPut<AuthController>(
      () => AuthController(),
    );
  }
}
