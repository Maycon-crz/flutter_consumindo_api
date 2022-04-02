import 'package:criado_apartir_exemplo_de_rodrigo_rahman_youtube/home/http/http_controller.dart';
import 'package:criado_apartir_exemplo_de_rodrigo_rahman_youtube/home/http/repository/user_http_repository.dart';
import 'package:criado_apartir_exemplo_de_rodrigo_rahman_youtube/repository/i_user_repository.dart';
import 'package:get/get.dart';

class HttpBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<IUserRepository>(UserHttpRepository());
    Get.put(HttpController(Get.find()));
  }
}
