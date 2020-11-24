import 'package:flutter/material.dart';
import 'package:flutterapp2/resourses/HomePage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
