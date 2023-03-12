import 'package:flutter/material.dart';
import './menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    //return Container();
    return MaterialApp(
      home: Menu(),
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}

// tugas API
// import 'package:flutter/material.dart';
// import './post_result.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<StatefulWidget> createState() {
//     return _MyAppState();
//   }
// }

// class _MyAppState extends State<MyApp> {
//   dynamic result;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("API Muhamad Firdaus"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               Text((result != null)
//                   ? result.id +
//                       " | " +
//                       result.name +
//                       " | " +
//                       result.job +
//                       " | " +
//                       result.createdAt
//                   : "Tidak ada data"),
//               ElevatedButton(
//                   onPressed: () {
//                     PostResult.connectToApi(
//                             "Muhammad Firdaus", "Sistem Informatika")
//                         .then((value) {
//                       result = value;
//                       setState(() {});
//                     });
//                   },
//                   child: Text("POST"))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

