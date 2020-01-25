import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var image = 'assets/dice1.png';
  Timer timer;

  initState() {
    timer = Timer.periodic(Duration(seconds: 2), (Timer t) {
      int r = Random().nextInt(7);
      setState(() {
        image = 'assets/dice$r.png';        
      });

    });

    super.initState();
  }

  onClick() {
    int r = Random().nextInt(7);
    setState(() {
      image = 'assets/dice$r.png';        
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice Roller',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('DIce Roller'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                height: 100,
                image: AssetImage(image)
              ),
              Padding(padding: EdgeInsets.all(30),),
              MaterialButton(
                color: Colors.red,
                child: Text(
                  'Roll',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
                onPressed: onClick,
                height: 45,
                minWidth: 100,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              )
            ],
          ),
        ),
      ),
    );
  }
}