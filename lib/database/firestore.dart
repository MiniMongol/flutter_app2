import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Database {
  static const String USERS = 'users';
  List<int> a=<int>[1,2];
  FirebaseFirestore database = FirebaseFirestore.instance;
  Future<DocumentSnapshot> start() async {
    await Firebase.initializeApp();
  }
  Future<DocumentSnapshot> getUserById(String id) async {
    await Firebase.initializeApp();
    return await database.collection(USERS).doc(id).get();
  }
  Future<DocumentSnapshot> addUser(String name) async {
    database.collection(USERS).add({'name':name});
  }
}