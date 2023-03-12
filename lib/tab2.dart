import 'package:flutter/material.dart';
import 'chat.dart';

class Tab2 extends StatefulWidget {
  const Tab2({super.key});

  @override
  State<Tab2> createState() {
    // TODO: implement createState
    return _Tab2State();
  }
}

class _Tab2State extends State<Tab2> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://randomuser.me/api/portraits/women/75.jpg'),
            ),
            title: Text('Jane Doe'),
            subtitle: Text('Kenalan dong'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChatScreen()),
              );
            },
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://randomuser.me/api/portraits/men/75.jpg'),
            ),
            title: Text('Jajang'),
            subtitle: Text('Ngopi ga?'),
            onTap: () {
              // handle tap on chat
            },
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://randomuser.me/api/portraits/men/75.jpg'),
            ),
            title: Text('Udin'),
            subtitle: Text('Dimana Bro'),
            onTap: () {
              // handle tap on chat
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 190, 3, 3),
        child: Icon(Icons.chat_bubble_outlined),
        onPressed: () {},
      ),
    );
  }
}

class ViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Screen'),
      ),
      body: Center(
        child: Text('This is the view screen'),
      ),
    );
  }
}
