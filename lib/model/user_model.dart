import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String _name;
  int _age;

  String get name => _name;
  int get age => _age;

  UserModel({String name, int age}) {
    _name = name;
    _age = age;
  }

  static UserModel createFromDocument(DocumentSnapshot document) {
    var data = document.data;
    String name = data["name"];
    int age = int.parse(data["age"]);
    return UserModel(name: name, age: age);
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["name"] = _name;
    map["age"] = _age;
    return map;
  }
}
