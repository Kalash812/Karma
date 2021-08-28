import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookingTile extends StatelessWidget {
  const BookingTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.45,
      decoration: BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/lord-buddha.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: Get.height * 0.45,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Text(
                          '9,523',
                          style: TextStyle(
                            fontSize: 30,
                            fontStyle: FontStyle.normal,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'JOINED',
                          style: TextStyle(
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  'CATEGORY',
                  style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'SPIRITUAL EMPOWERMENT',
                  style: TextStyle(
                    fontSize: 24,
                    fontStyle: FontStyle.normal,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.lock_clock,
                      size: 50,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '05:00 AM | 07 DEC 2019',
                      style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: Get.width * 0.35,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.lightGreenAccent[700],
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Text(
                        'JOINED',
                        style: TextStyle(
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                    ),
                    Container(
                      width: Get.width * 0.35,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Text(
                        'DO KARMA',
                        style: TextStyle(
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
