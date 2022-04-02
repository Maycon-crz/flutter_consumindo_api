import 'user_type.dart';

class UserModel {
  String id;
  String name;
  String userName;
  List<UserType> types;

  UserModel({
    required this.id,
    required this.name,
    required this.userName,
    required this.types,
  });
}
