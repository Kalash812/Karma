import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hacker_kernel/routes/app_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'OpenSans'),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
