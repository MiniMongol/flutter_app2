import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String _name;
  int _age;
  String _login;
  String _password;

  String get name => _name;
  int get age => _age;
  String get login => _login;
  String get password => _password;

  UserModel({String login, String password, String name, int age}) {
    _name = name;
    _age = age;
    _password = password;
    _login = login;
  }

  static UserModel createFromDocument(DocumentSnapshot document) {
    var data = document.data;
    String login = data["login"];
    String password = data["password"];
    String name = data["name"];
    int age = int.parse(data["age"]);
    return UserModel(login: login, password: password, name: name, age: age);
  }

  static UserModel create(String logi, String passwor, String nam, int ag) {
    return UserModel(login: logi, password: passwor, name: nam, age: ag);
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["name"] = _name;
    map["age"] = _age;
    map["password"] = _password;
    map["login"] = _login;
    return map;
  }
}
