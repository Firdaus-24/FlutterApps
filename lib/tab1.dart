import 'package:flutter/material.dart';

class Tab1 extends StatefulWidget {
  const Tab1({super.key});

  @override
  State<Tab1> createState() {
    // TODO: implement createState
    return _Tab1State();
  }
}

class _Tab1State extends State<Tab1> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement buildfl
    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) => ListTile(title: Text('Item #$index')),
          childCount: 10,
        ),
      ),
    ]));
  }
}
