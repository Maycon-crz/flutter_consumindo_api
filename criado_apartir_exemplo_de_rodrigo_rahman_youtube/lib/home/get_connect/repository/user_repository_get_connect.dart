import 'package:criado_apartir_exemplo_de_rodrigo_rahman_youtube/model/user_model.dart';
import 'package:criado_apartir_exemplo_de_rodrigo_rahman_youtube/repository/i_user_repository.dart';
import 'package:criado_apartir_exemplo_de_rodrigo_rahman_youtube/shared/rest_client.dart';
import 'package:get/get.dart';

class UserRepositoryGetConnect implements IUserRepository {
  final RestClient restClient;

  UserRepositoryGetConnect(this.restClient);

  @override
  Future<List<UserModel>> findAllUsers() async {
    final response = await restClient
        .get('https://62484233229b222a3fd5d6b9.mockapi.io/api/um');
    List<dynamic> data = response.body;
    return data.map<UserModel>((resp) => UserModel.fromMap(resp)).toList();
  }
}
