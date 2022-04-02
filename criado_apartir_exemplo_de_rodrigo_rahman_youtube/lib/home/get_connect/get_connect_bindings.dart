import 'package:criado_apartir_exemplo_de_rodrigo_rahman_youtube/home/get_connect/get_connect_controller.dart';
import 'package:criado_apartir_exemplo_de_rodrigo_rahman_youtube/home/get_connect/repository/user_repository_get_connect.dart';
import 'package:criado_apartir_exemplo_de_rodrigo_rahman_youtube/repository/i_user_repository.dart';
import 'package:criado_apartir_exemplo_de_rodrigo_rahman_youtube/shared/rest_client.dart';
import 'package:get/get.dart';

class GetConnectBindings implements Bindings {
  @override
  void dependencies() {    
    Get.put<IUserRepository>(UserRepositoryGetConnect(Get.find()));
    Get.put(GetConnectController(Get.find()));
  }
}
