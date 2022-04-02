import 'package:criado_apartir_exemplo_de_rodrigo_rahman_youtube/home/get_connect/get_connect_bindings.dart';
import 'package:criado_apartir_exemplo_de_rodrigo_rahman_youtube/home/get_connect/get_connect_page.dart';
import 'package:criado_apartir_exemplo_de_rodrigo_rahman_youtube/home/home_bindings.dart';
import 'package:criado_apartir_exemplo_de_rodrigo_rahman_youtube/home/http/http_bindings.dart';
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
      GetPage(
        name: '/',
        page: () => const HomePage(),
        binding: HomeBindings(),
        children: [
          GetPage(
            name: '/http',
            page: () => const HtttpPage(),
            binding: HttpBindings(),
          ),
          GetPage(
            name: '/getConnect',
            page: () => const GetConnectPage(),
            binding: GetConnectBindings(),
          ),
        ],
      ),
    ]);
  }
}
