import 'package:criado_apartir_exemplo_de_rodrigo_rahman_youtube/repository/i_user_repository.dart';
import 'package:get/get.dart';

class GetConnectController extends GetxController with StateMixin {
  final IUserRepository _httpRepository;

  GetConnectController(this._httpRepository);

  @override
  void onInit() {
    super.onInit();
    findUsers();
  }

  Future<void> findUsers() async {
    change([], status: RxStatus.loading());
    try {
      final dados = await _httpRepository.findAllUsers();
      change(dados, status: RxStatus.success());
    } catch (e) {
      change([], status: RxStatus.error('Erro ao buscar usuários'));
    }
  }
}
