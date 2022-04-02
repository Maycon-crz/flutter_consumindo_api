import 'package:get/get.dart';

import '../shared/rest_client.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(RestClient());
  }
}