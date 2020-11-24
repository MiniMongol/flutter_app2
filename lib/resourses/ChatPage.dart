
import 'package:flutter/material.dart';
import 'package:flutterapp2/database/firestore.dart';

class ChatPage extends StatefulWidget {


  @override
  _ChatPage createState() => _ChatPage();
}

class _ChatPage extends State<ChatPage> {

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text("Chat"),
      ),
      body: Center(
        child: ListView.builder(
        itemCount: 0,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            color: Colors.grey,
            height: 100,
            child: FlatButton(
              onPressed: () {
                },
              child: Text(''),
            ),
          );
          },
       ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Database().getUserById('10');
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
     );
   }
 }