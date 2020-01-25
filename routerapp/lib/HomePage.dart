import 'package:flutter/material.dart';
import 'SecondPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Home Page',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
            ),
            Padding(padding: EdgeInsets.all(20)),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage('Samansh', 20)
                  )
                );
              },
              child: Text(
                'Second Page',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)
              ),
              color: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            )
          ],
        ),
      ),
    );
  }
}