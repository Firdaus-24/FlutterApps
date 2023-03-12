import 'package:flutter/material.dart';

class Chat {
  final String name;
  final String message;
  final String time;

  Chat(this.name, this.message, this.time);
}

class ChatScreen extends StatelessWidget {
  final List<Chat> _chats = [
    Chat('John', 'Hi there!', '9:00 AM'),
    Chat('Jane', 'Hey, how are you?', '9:05 AM'),
    Chat('John', 'I\'m good, thanks!', '9:10 AM'),
    Chat('Jane', 'What are you up to today?', '9:15 AM'),
    Chat('John', 'Just working on some projects. You?', '9:20 AM'),
    Chat('Jane', 'Same here, just finishing up some stuff.', '9:25 AM'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chats'),
      ),
      body: ListView.builder(
        itemCount: _chats.length,
        itemBuilder: (BuildContext context, int index) {
          final chat = _chats[index];
          return ListTile(
            leading: CircleAvatar(
              child: Text(chat.name[0]),
            ),
            title: Text(chat.name),
            subtitle: Text(chat.message),
            trailing: Text(chat.time),
          );
        },
      ),
    );
  }
}
