import 'package:flutter/material.dart';
import 'package:flutter_chat/controllers/user_list_controller.dart';
import 'package:flutter_chat/model/user_model.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPage createState() => _ChatPage();
}

class _ChatPage extends State<ChatPage> {
  final controller = UserListController();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: controller.getUsers(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: controller.users.length,
            itemBuilder: (context, index) {
              UserModel a = controller.users[index];
              return  FlatButton(
                onPressed: () {
                  setState(() {
                  });
                },
                child: Text('Имя: ' + a.name + ', ' + a.age.toString()),
              );
            },
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Упс, произошла ошибка'),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
