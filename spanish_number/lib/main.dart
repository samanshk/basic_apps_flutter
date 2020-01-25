// import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';


main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static AudioCache player = AudioCache();


  Widget createButton(txt, color) {
    return MaterialButton(
      color: color,
      height: 78,
      minWidth: 150,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Text(
        txt,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30
        ),
      ), 
      onPressed: () {player.play("${txt.toLowerCase()}.wav");},
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spannish audio app',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Spanish Audio'),
        ),
        body: Column(
          children: <Widget>[
            Image(image: AssetImage('assets/lco.png'), height: 150, width: 150,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                createButton('ONE', Colors.cyan),
                createButton('TWO', Colors.blue),
              ],
            ),
            Padding(padding: EdgeInsets.all(5),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                createButton('THREE', Colors.black),
                createButton('FOUR', Colors.amber),
              ],
            ),
            Padding(padding: EdgeInsets.all(5),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                createButton('FIVE', Colors.purple),
                createButton('SIX', Colors.green),
              ],
            ),
            Padding(padding: EdgeInsets.all(5),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                createButton('SEVEN', Colors.orange),
                createButton('EIGHT', Colors.brown),
              ],
            ),
            Padding(padding: EdgeInsets.all(5),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                createButton('NINE', Colors.blueGrey),
                createButton('TEN', Colors.pink),
              ],
            )

          ],
        ),
      ),
    );
  }
}