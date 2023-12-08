import 'dart:convert';

class RegisterRequestModel {
  final String name;
  final String email;
  final String password;
  final String phone;
  final String roles;

  RegisterRequestModel({
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.roles,
  });

  factory RegisterRequestModel.fromJson(String str) =>
      RegisterRequestModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory RegisterRequestModel.fromMap(Map<String, dynamic> json) =>
      RegisterRequestModel(
        name: json["name"],
        email: json["email"],
        password: json["password"],
        phone: json["phone"],
        roles: json["roles"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "email": email,
        "password": password,
        "phone": phone,
        "roles": roles,
      };
}
