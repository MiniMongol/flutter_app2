import 'package:flutter_chat/database/firestore.dart';
import 'package:flutter_chat/model/user_model.dart';

class UserListController {
  final database = Database();
  List<UserModel> users = List<UserModel>();

  Future<void> getUsers() async {
    database.getUsers().asStream().map(
          (documents) => documents.forEach(
            (document) {
              users.add(
                UserModel.createFromDocument(document),
              );
            },
          ),
        );
  }
}
