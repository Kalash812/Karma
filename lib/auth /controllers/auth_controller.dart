import 'package:get/get.dart';
import 'package:hacker_kernel/routes/app_pages.dart';
import 'package:http/http.dart' as http;

class AuthController extends GetxController {
  String loginUrl = 'https://reqres.in/api/login';
  Rxn<int> responseCode = Rxn<int>();
  int? get code => responseCode.value;

  void loginUser(String email, String password) async {
    final response = await http.post(Uri.parse(loginUrl), body: {
      'email': email,
      'password': password,
    });

    responseCode.value = response.statusCode;

    if (response.statusCode == 200) {
      Get.toNamed(Routes.KARMA);
    } else {
      Get.snackbar('User not found', 'Please check your email and password');
    }
  }
}
