import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home/home_page.dart';
import 'home/http/http_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(getPages: [
      GetPage(name: '/', page: () => const HomePage(), children: [
        GetPage(
          name: '/http',
          page: () => const HtttpPage(),
        ),
      ]),
    ]);
  }
}
