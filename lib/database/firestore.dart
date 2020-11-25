import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_chat/model/user_model.dart';

class Database {
  static const String USERS = 'users';

  final firestore = Firestore.instance;

  Future<DocumentSnapshot> getUserById(String id) async {
    return await firestore.collection(USERS).document(id).get();
  }

  Future<void> addUser(UserModel user) async {
    firestore.collection(USERS).add(user.toJson());
  }

  Future<List<DocumentSnapshot>> getUsers() async {
    final QuerySnapshot result =
        await firestore.collection(USERS).getDocuments();
    final List<DocumentSnapshot> documents = result.documents;
    return documents;
  }
}
