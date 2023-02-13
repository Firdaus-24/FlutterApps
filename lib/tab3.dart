import 'package:flutter/material.dart';

class Tab3 extends StatefulWidget {
  const Tab3({super.key});
  @override
  State<Tab3> createState() => _Tab3State();
}

class _Tab3State extends State<Tab3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          contact(
            'assets/st1.jpg',
            'Jiajiaah',
            '',
            '',
            '17 minutes ago',
            context,
          ),
          contact(
            'assets/st2.jpg',
            'Akbar',
            '',
            '',
            'Yesterday, 07:44 PM',
            context,
          ),
          contact(
            'assets/st4.jpg',
            'Faisal',
            '',
            '',
            'Yesterday, 5:52 PM',
            context,
          ),
          contact(
            'assets/st3.jpg',
            'Gustin',
            '',
            '',
            'Yesterday, 4:25 PM',
            context,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 190, 3, 3),
        child: Icon(Icons.camera_alt_outlined),
        onPressed: () {},
      ),
    );
  }
}

Widget contact(
    String urlImage, String title, var time, onOff, String msgs, context) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 8.0, 0, 8.0),
    child: ListTile(
      onTap: () {},
      leading: Container(
        height: 50,
        width: 50,
        child: ClipOval(
          child: Image.asset(
            urlImage,
            fit: BoxFit.fill,
          ),
        ),
      ),
      title: Text(title),
      subtitle: Row(
        children: [
          const SizedBox(
            width: 4.0,
          ),
          Text(
            msgs,
          ),
        ],
      ),
      trailing: Text(time),
    ),
  );
}
