import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/services.dart';

void main() => runApp(ColorContainer());

class ColorContainer extends StatefulWidget {
  @override
  _ColorContainerState createState() => _ColorContainerState();
}

class _ColorContainerState extends State<ColorContainer> {
  var btnColor1 = Colors.black, btnColor2 = Colors.black;
  var bgColor1 = Colors.white, bgColor2 = Colors.white;

  void onClick1() {    
    setState(() {
      bgColor1 = btnColor1;
      btnColor1 = Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256));
    });
  }

  void onClick2() {
    setState(() {
      bgColor2 = btnColor2;
      btnColor2 = Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256));      
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'colors',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: Scaffold(      
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.black,
        // appBar: AppBar(
        //   title: Text('Colored Containers'),
        // ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[ 
              Expanded( 
                child: Container(
                  padding: EdgeInsets.all(150),
                  alignment: Alignment.center,
                  // width: 350, //400
                  // height: 350, //368
                  color: bgColor1,
                  child: RaisedButton(
                    color: btnColor1,
                    onPressed: onClick1,
                    child: Text(''),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                  ),
                )
              ),
              Expanded( 
                child: Container(
                  padding: EdgeInsets.all(150),
                  alignment: Alignment.center,
                  // width: 350, //400
                  // height: 350, //369
                  color: bgColor2,
                  child: RaisedButton(
                    color: btnColor2,
                    onPressed: onClick2,
                    child: Text(''),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                  ),
                )
              )
            ],
          )
        )
      )

    );
  }
}

