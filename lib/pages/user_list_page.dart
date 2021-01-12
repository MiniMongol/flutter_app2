import 'package:flutter/material.dart';
import 'package:flutter_chat/controllers/user_list_controller.dart';
import 'package:flutter_chat/model/user_model.dart';

class UserListPage extends StatefulWidget {
  @override
  _UserListPageState createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {
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
              return userWidget(controller.users[index]);
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

Widget userWidget(UserModel user) {
  return Container(
    child: Row(
      children: [
        Text(
          user.name,
          style: TextStyle(fontSize: 16),
        ),
        Text(
          user.age.toString(),
          style: TextStyle(fontSize: 14),
        ),
      ],
    ),
  );
}
