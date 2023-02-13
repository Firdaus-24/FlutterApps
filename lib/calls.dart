import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CallsState();
  }
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Center(
            child: Center(
          child: Text('Calls Page'),
        )),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          child: Icon(Icons.call),
          onPressed: () => {},
        ));
  }
}
