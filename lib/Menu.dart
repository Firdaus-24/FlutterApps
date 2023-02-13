import 'package:flutter/material.dart';
import './tab1.dart';
import './tab2.dart';
import './tab3.dart';
import './home.dart';
import './tab4.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 190, 3, 3),
          title: Text('PIRDAUS APPS'),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // handle search action
              },
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                // handle more action
              },
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.person_outlined),
              ),
              Tab(text: 'Chats'),
              Tab(
                text: 'status',
              ),
              Tab(
                text: 'Calls',
              ),
            ],
          ),
        ),
        body: TabBarView(children: <Widget>[
          Tab1(),
          Tab2(),
          Tab3(),
          Tab4(),
        ]),
      ),
    );
  }
}
