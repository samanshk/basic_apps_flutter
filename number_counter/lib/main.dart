import 'package:flutter/material.dart';
import 'dart:math';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var text = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'];
  var colors = [Colors.amber, Colors.blue, Colors.brown, Colors.cyan, Colors.pink, Colors.purple, Colors.teal, Colors.green, Colors.deepOrange, Colors.indigo];
  var index = 0, colorIndex = 0;
  
  void changeText() {
    setState(() {
      index = Random().nextInt(10);
      colorIndex = Random().nextInt(10);
      // if (index < 9) {
      //   index++;
      // } else {
      //   index = 0;
      // }      
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Number Counter',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home: Scaffold(
        backgroundColor: colors[colorIndex],
        // appBar: AppBar(
        //   title: Text('Number Counter'),
        // ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                text[index],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontStyle: FontStyle.italic
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
              ),
              RaisedButton(
                color: Colors.red,
                splashColor: Colors.teal,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                onPressed: changeText,
                child: Text(
                  'Click here',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontStyle: FontStyle.italic
                  )
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}