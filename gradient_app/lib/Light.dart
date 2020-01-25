import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';

class Light extends StatefulWidget {
  @override
  _LightState createState() => _LightState();
}

class _LightState extends State<Light> {
  Widget subject(col1, col2, img, sub) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [col1, col2]
          )
        ),
        child: Stack(
          children: <Widget>[
            Image.asset('assets/image.png', height: 100, width: 200,),
            Container(padding: EdgeInsets.all(5),  child: Text(sub, textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Colors.white),))
          ],
        ),
        // child: Text('Hello'),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
              child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.asset('assets/school.png'),
                  Text('School', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold), )
                ],
              ),
              Padding(padding: EdgeInsets.all(9),),
              Row(
                children: <Widget>[
                  subject(Colors.red, Colors.blue, 'assets/physics.png', 'Physics'),
                  Padding(padding: EdgeInsets.all(10),),
                  subject(Colors.pink, Colors.purple, 'assets/maths.png', 'Maths'),
                ],
              ),
              Padding(padding: EdgeInsets.all(10),),
              Row(
                children: <Widget>[
                  subject(Colors.green, Colors.yellow, 'assets/computer.png', 'Computer'),
                  Padding(padding: EdgeInsets.all(10),),
                  subject(Colors.orangeAccent, Colors.pink, 'assets/english.png', 'English'),
                ],
              ),
              Padding(padding: EdgeInsets.all(10),),
              Row(
                children: <Widget>[
                  subject(Colors.red, Colors.white, 'assets/chemistry.png', 'Chemistry'),
                  Padding(padding: EdgeInsets.all(10),),
                  subject(Colors.green, Colors.indigo, 'assets/physics.png', 'Physics'),
                ],
              )            
            ],
            
          ),
        ),
      ),
    );
  }
}