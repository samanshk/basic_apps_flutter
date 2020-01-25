import 'dart:async';
import 'package:flutter/material.dart';
import 'package:instagram/splash.dart';
import 'Login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme: ThemeData(
        primaryColor: Colors.white
      ),
      home: Splash(),
    );
  }
}


// class MyApp extends StatefulWidget {
  
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   Timer timer;
//   initState() {
//     super.initState();
//     timer = Timer(Duration(seconds: 5), () {
//       Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Instagram',
//       theme: ThemeData(
//         primaryColor: Colors.white
//       ),
//       home: Scaffold(
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Expanded(child: Image.asset('assets/logo.png', height: 100, width: 100,)),
//               // Padding(padding: EdgeInsets.all(40)),
//               Text('from', style: TextStyle(color: Colors.grey),),
//               Text('FACEBOOK', style: TextStyle(color: Colors.purple, fontSize: 20, fontWeight: FontWeight.bold)),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
