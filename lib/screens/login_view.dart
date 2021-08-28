// ignore: import_of_legacy_library_into_null_safe
import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/material.dart';

// ignore: implementation_imports
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:hacker_kernel/auth%20/controllers/auth_controller.dart';
import 'package:hacker_kernel/widgets/custom_input_field.dart';

class LoginView extends GetView<AuthController> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 133, 0, 1),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0.0,
              left: 0.5,
              right: 0.5,
              child: Image(
                image: AssetImage('assets/images/Login – 1.jpeg'),
                height: Get.height * 0.22,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 160),
              color: Colors.transparent,
              height: Get.height,
              width: Get.width,
              child: RotatedBox(
                quarterTurns: 2,
                child: Arc(
                    arcType: ArcType.CONVEY,
                    height: 40.0,
                    child: Container(
                      color: Colors.white,
                    )),
              ),
            ),
            Positioned(
              bottom: 0.0,
              top: Get.height * 0.25,
              child: Container(
                padding: EdgeInsets.only(top: 140, right: 40, left: 40),
                width: Get.width,
                color: Colors.transparent,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CustomInputField(
                        controller: emailController,
                        width: Get.width * 0.8,
                        hintText: 'Email',
                      ),
                      SizedBox(
                        height: Get.height * 0.06,
                      ),
                      CustomInputField(
                        controller: passwordController,
                        width: Get.width * 0.8,
                        hintText: 'Password',
                      ),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot Password',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Color.fromRGBO(255, 133, 0, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Get.height * 0.14,
                      ),
                      Container(
                        width: Get.width * 0.35,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.green),
                          ),
                          onPressed: () {
                            controller.loginUser(
                                emailController.text, passwordController.text);
                          },
                          child: Text('Login'),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Not a member yet?',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Click Here',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Color.fromRGBO(255, 133, 0, 1),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
