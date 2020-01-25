import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'Profile.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(padding: EdgeInsets.all(20)),
              Text('English (India) ⌄', style: TextStyle(color: Colors.grey), textAlign: TextAlign.center,),
              Padding(padding: EdgeInsets.all(30)),
              Image.asset('assets/instagram.png', height: 70, width: 500,),
              Padding(padding: EdgeInsets.all(5)),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Phone number, email address or username',
                  filled: true,
                  fillColor: Colors.grey[100]
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  filled: true,
                  fillColor: Colors.grey[100],
                ),
              ),
              Padding(padding: EdgeInsets.all(5)),
              MaterialButton(
                onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profile()
                  )
                );
              },
                child: Text(
                  'Log in',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                ),
                color: Colors.blue[200],
                padding: EdgeInsetsDirectional.fromSTEB(120, 4, 120, 4),
              ),
              Text('Forgotten your login details? Get help with signing in.', textAlign: TextAlign.center),
              Padding(padding: EdgeInsets.all(10)),
              Text(
                'Log In With Facebook',
                style: TextStyle(color: Colors.blue[300], fontSize: 15, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center
              ),

              Padding(padding: EdgeInsets.all(10)),
              Text('OR', style: TextStyle(color: Colors.grey, fontSize: 16), textAlign: TextAlign.center,),
              Padding(padding: EdgeInsets.all(10),),
              Text('Don\'t have an account? Signup', textAlign: TextAlign.center,),
              Padding(padding: EdgeInsets.all(50)),
              Text('Instagram from Facebook', style: TextStyle(color: Colors.grey), textAlign: TextAlign.center,)
            ],
          ),
        ),
      ),
    );
  }
}