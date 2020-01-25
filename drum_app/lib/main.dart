import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static AudioCache player = AudioCache();

  Widget button(sound, col) {
    return MaterialButton(
      onPressed: () {
        player.clearCache();
        player.play('$sound.mp3');
      },
      minWidth: 130,
      height: 150,
      color: col,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10), side: BorderSide(color: Colors.white, width: 3)),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Drum App',
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          margin: EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  button('01', Colors.red),
                  button('02', Colors.amber),
                  button('03', Colors.blue),
                  button('04', Colors.green),
                  button('05', Colors.pink[200])
                ],
              ),
              Padding(padding: EdgeInsets.all(10),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  button('06', Colors.teal[100]),
                  button('07', Colors.purple),
                  button('08', Colors.deepOrangeAccent),
                  button('09', Colors.pink),
                  button('10', Colors.indigo)
                ],
              )
            ],
          ),

        ),
      ),
    );
  }
}