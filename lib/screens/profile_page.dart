import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hacker_kernel/auth%20/controllers/profile_page_controller.dart';
import 'package:hacker_kernel/routes/app_pages.dart';
import 'package:hacker_kernel/widgets/custom_input_field.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(255, 133, 0, 1),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: Get.width,
              height: Get.height * 0.08,
              // color: Colors.pink,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        child: IconButton(
                          onPressed: () => Get.toNamed(Routes.KARMA),
                          icon: Icon(
                            Icons.arrow_back_ios,
                            size: 30,
                            color: Colors.white70,
                          ),
                        ),
                        backgroundColor: Color.fromRGBO(255, 147, 44, 0.8),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Profile',
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 25,
                    child: Icon(
                      Icons.edit,
                      size: 30,
                      color: Colors.white70,
                    ),
                    backgroundColor: Color.fromRGBO(255, 147, 44, 0.8),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 200),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  )),
              child: Padding(
                padding: const EdgeInsets.only(top: 140.0, left: 20, right: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Name",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            CustomInputField(
                                controller: controller,
                                width: Get.width * 0.4,
                                hintText: 'Paul'),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Location",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            CustomInputField(
                                controller: controller,
                                width: Get.width * 0.4,
                                hintText: 'New York City'),
                            SizedBox(
                              height: 60,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Phone Number",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            CustomInputField(
                                controller: controller,
                                width: Get.width * 0.4,
                                hintText: '+91 8737725483'),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Interest",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            CustomInputField(
                                controller: controller,
                                width: Get.width * 0.4,
                                hintText: 'Football'),
                            SizedBox(
                              height: 65,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Notifications',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w600),
                        ),
                        GetBuilder<ProfilePageController>(
                            builder: (controller) {
                          return CupertinoSwitch(
                            activeColor: Color.fromRGBO(255, 133, 0, 1),
                            value: controller.isChecked.value,
                            onChanged: (value) {
                              controller.isChecked.toggle();
                              controller.update();
                            },
                          );
                        }),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: Get.height * 0.03,
              left: Get.width * 0.3,
              // right: Get.width * 0.4,
              child: Container(
                  width: Get.width * 0.4,
                  height: Get.height * 0.45,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.contain,
                        image: new NetworkImage(
                            "https://i.dailymail.co.uk/i/pix/2017/04/20/13/3F6B966D00000578-4428630-image-m-80_1492690622006.jpg")),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
