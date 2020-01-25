import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  String name;
  int age;
  SecondPage(this.name, this.age);
  @override
  _SecondPageState createState() => _SecondPageState(name, age);
}

class _SecondPageState extends State<SecondPage> {
  String myName;
  int myAge;
  _SecondPageState(this.myName, this.myAge);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Name: $myName \nAge: $myAge',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
            ),
            Padding(padding: EdgeInsets.all(20)),
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Home Page',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              color: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              enableFeedback: true,
            )
          ],
        ),
      ),
    );
  }
}