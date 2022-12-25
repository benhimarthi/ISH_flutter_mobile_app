import 'package:flutter/foundation.dart';

class User {
  int id;
  String name;
  String email;
  String password;

  User({this.id = 0, this.name = "", this.email = "", this.password = ""});

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'email': email, 'password': password};
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['id'],
        name: json['name'],
        email: json['email'],
        password: json['password']);
  }
}
