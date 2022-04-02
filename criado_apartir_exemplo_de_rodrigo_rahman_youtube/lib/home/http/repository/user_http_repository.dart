import 'dart:convert';

import '../../../model/user_model.dart';
import '../../../repository/i_user_repository.dart';
import "package:http/http.dart" as http;

class UserHttpRepository implements IUserRepository {
  @override
  Future<List<UserModel>> findAllUsers() async {
    try {
      final response = await http
          .get(Uri.parse('https://62484233229b222a3fd5d6b9.mockapi.io/api/um'));
      final List<dynamic> responseMap = jsonDecode(response.body);
      return responseMap
          .map<UserModel>((resp) => UserModel.fromMap(resp))
          .toList();
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
