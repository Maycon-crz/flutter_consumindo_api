import 'dart:convert';

import 'user_profile.dart';

class UserModel {
  String id;
  String name;
  String username;
  List<UserProfile> profile;

  UserModel({
    required this.id,
    required this.name,
    required this.username,
    required this.profile,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'name': name});
    result.addAll({'username': username});
    result.addAll({'profile': profile.map((x) => x.toMap()).toList()});

    return result;
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    // if (map == null) {
    //   return null;
    // }
    return UserModel(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      username: map['username'] ?? '',
      profile: List<UserProfile>.from(
          map['profile']?.map((x) => UserProfile.fromMap(x)) ?? const []),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));
}
