import 'package:flutter/material.dart';

class WhatsAppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Container(
          //   // height: 70,
          //   //  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8)
          //   decoration: BoxDecoration(
          //     color: Color(0xff075E54),
          //   ),
          //   child: Padding(
          //     padding: EdgeInsets.symmetric(horizontal: 20),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.end,
          //       children: [
          //         Icon(
          //           Icons.camera_alt,
          //           color: Colors.white,
          //         ),
          //         Icon(
          //           Icons.search,
          //           color: Colors.white,
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
              ),
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://picsum.photos/200/200',
                      ),
                    ),
                    title: Text(
                      'Contact $index',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text('Last message...'),
                    trailing: Text('10:00'),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff25D366),
        child: Icon(Icons.message),
        onPressed: () {},
      ),
    );
  }
}
