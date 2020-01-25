import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var name1 = TextEditingController();
  var name2 = TextEditingController();
  var percent = '', quote = '';
  var quotes = [
    'Love is a two-way street constantly under construction.',
    'Love: Two minds without a single thought.',
    'You balance each other out so perfectly.',
    'Forget the fairy tales, We think your love story is the best one ever told.'
  ];
  onClick() {
    if(name1.text.isNotEmpty && name2.text.isNotEmpty){
      setState(() {
        percent = (Random().nextInt(50) + 50 + Random().nextDouble()).toStringAsFixed(2) + '%';
        quote = quotes[Random().nextInt(4)];
      });
    }    
    else {
      setState(() {
        percent = '';
        quote = '';
      });
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Love Calculator',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: Scaffold(
        backgroundColor: Colors.pink,
        // appBar: AppBar(
        //   title: Text('Age Calculator'),
        // ),
        body: Container( 
          margin: EdgeInsetsDirectional.fromSTEB(50, 50, 50, 10),
          child:Column(
            children: <Widget>[  
              Text('Calculate your love',
                style: TextStyle(
                  color: Colors.yellowAccent,
                  fontSize: 45,
                  fontWeight: FontWeight.w800
                ),
                textAlign: TextAlign.center,
              ),
              Padding(padding: EdgeInsets.all(20)),           
              TextField(
                controller: name1,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Your name',  
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              TextField(
                controller: name2,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Your partner's name",  
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                ),
              ),
              Padding(padding: EdgeInsets.all(20)),
              MaterialButton(
                padding: EdgeInsets.all(20),
                onPressed: () {onClick();},
                color: Color(0xFF4F34AA),
                child: Text(
                  'Calculate',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(20)),
              Text(
                percent,
                style: TextStyle(
                  color: Colors.amberAccent,
                  fontSize: 55,
                  fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,
              )
              ,
              Padding(padding: EdgeInsets.all(10)),
              Text(
                quote,
                style: TextStyle(
                  color: Colors.yellowAccent,
                  fontSize: 20,
                  fontStyle: FontStyle.italic
                ),
                textAlign: TextAlign.center,
              )  
            ],
          )
        )
      ),
    );
  }
}