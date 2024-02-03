import 'dart:convert';

class AuthErroModel {
  String message;

  AuthErroModel({
    required this.message,
  });

  factory AuthErroModel.fromRawJson(String str) =>
      AuthErroModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AuthErroModel.fromJson(Map<String, dynamic> json) => AuthErroModel(
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
      };
}
// JSON

/*
{
  "message":"Invalide credentials"
}
*/