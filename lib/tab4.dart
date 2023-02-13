import 'package:flutter/material.dart';

class Tab4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 70,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  Icon(
                    Icons.cloud_circle_rounded,
                    size: 45,
                    color: Color.fromARGB(255, 2, 75, 35),
                  ),
                  SizedBox(width: 10),
                  Text('Tambah Kontak Baru')
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
              ),
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://picsum.photos/id/237/200/300',
                      ),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Contact $index',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    subtitle: Row(
                      children: [
                        Icon(
                          Icons.call_missed,
                          size: 15,
                          color: Colors.red,
                        ),
                        SizedBox(width: 10),
                        Text('Subtitle Text')
                      ],
                    ),
                    trailing: Icon(
                      Icons.call_end_sharp,
                      size: 20,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 190, 3, 3),
        child: Icon(Icons.call_sharp),
        onPressed: () {},
      ),
    );
  }
}
