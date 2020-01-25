import 'package:flutter/material.dart';

import 'Post.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News post',
      home: Post()
    );
  }
}