import 'package:flutter/material.dart';
import 'Light.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gradients',
      theme: ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.dark
      ),
      home: Light(),
    );
  }
}