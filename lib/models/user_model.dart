// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  final String name;
  final String eMail;
  final String password;

  UserModel({
    required this.name,
    required this.eMail,
    required this.password,
  });

  UserModel copyWith({
    String? name,
    String? eMail,
    String? password,
  }) =>
      UserModel(
        name: name ?? this.name,
        eMail: eMail ?? this.eMail,
        password: password ?? this.password,
      );

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    name: json["name"],
    eMail: json["e-mail"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "e-mail": eMail,
    "password": password,
  };
}
