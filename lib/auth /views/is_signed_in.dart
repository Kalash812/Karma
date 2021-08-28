import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hacker_kernel/auth%20/controllers/auth_controller.dart';
import 'package:hacker_kernel/screens/karma.dart';
import 'package:hacker_kernel/screens/login_view.dart';

class IsSignedIn extends GetWidget<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Get.find<AuthController>().code == 200 ? KarmaPage() : LoginView();
    });
  }
}
