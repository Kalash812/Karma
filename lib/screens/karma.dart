import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hacker_kernel/routes/app_pages.dart';

import '../widgets/booking_tile.dart';

class KarmaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(255, 133, 0, 1),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              width: Get.width,
              height: Get.height * 0.2,
              // color: Colors.pink,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            child: IconButton(
                              onPressed: () => Get.toNamed(Routes.PROFILE_PAGE),
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
                            'Karma Drives',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.LOGIN);
                        },
                        child: Container(
                          width: Get.width * 0.30,
                          height: 38,
                          child: Center(
                            child: Text(
                              'LOG OUT',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 18),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: Get.width * 0.9,
                    height: 60,
                    decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color.fromRGBO(238, 238, 238, 1),
                      shape: BoxShape.rectangle,
                    ),
                    child: new TextField(
                      textAlign: TextAlign.start,
                      decoration: new InputDecoration(
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: Image.asset('assets/images/search-icon.png',
                                scale: 1.5),
                          ),
                        ),
                        hintText: 'Search here...',
                        contentPadding: EdgeInsets.only(
                          left: 20,
                          top: 15,
                        ),
                        hintStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  )
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
                padding: const EdgeInsets.only(top: 40.0, left: 20, right: 20),
                child: ListView(
                  children: [
                    Card(
                      child: BookingTile(),
                    ),
                    Card(child: BookingTile()),
                    Card(child: BookingTile()),
                    Card(child: BookingTile()),
                    Card(child: BookingTile()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
