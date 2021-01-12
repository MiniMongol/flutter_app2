import 'package:flutter/material.dart';
import 'package:flutter_chat/controllers/user_list_controller.dart';
import 'package:flutter_chat/database/firestore.dart';
import 'package:flutter_chat/pages/chat_page.dart';
import 'package:flutter_chat/pages/user_list_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ulist = UserListController();
  TextEditingController loginController= TextEditingController();
  TextEditingController passwordController= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Авторизация"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              obscureText: true,
              controller: loginController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Login',
              ),
            ),
            TextField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
            FlatButton(
              onPressed: () {
                setState(() {
                  ulist.getUsers();
                 /* for(int i=0; i<ulist.users.length;i++) {
                      if (loginController.text == ulist.users[i].login && passwordController.text == ulist.users[i].password) {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ChatPage()));
                      }
                   }*/
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ChatPage()));
                });
              },
              child: Text('ВОЙТИ'),
            ),
            FlatButton(
              onPressed: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UserListPage()));
                });
              },
              child: Text('РЕГИСТРАЦИЯ'),
            )
          ],
        ),
      ),
    );
  }
}
