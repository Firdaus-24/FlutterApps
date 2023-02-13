import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StatusState();
  }
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Center(child: Text('Status Page')),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.green,
              child: Icon(Icons.pending),
              onPressed: () {
                //...
              },
            ),
            SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              backgroundColor: Colors.green,
              child: Icon(Icons.camera),
              onPressed: () => {},
            )
          ],
        ));
  }
}
