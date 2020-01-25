import 'package:flutter/material.dart';

void main() => runApp(Login());

class Login extends StatefulWidget {
  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();
  var user = '';
  var pass = '';
  var msg = '';
  Color msgColor;
  
  void onClick() {
    setState(() {
      user = userController.text;
      pass = passController.text;

      if (pass == 'password' && user == 'username') {
        msg = 'You have logged in.';
        msgColor = Colors.green;
      }
      else {
        msg = 'Incorrect username or password.';
        msgColor = Colors.red;
      }
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body:Container(
          padding: EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  msg,
                  style: TextStyle(height: 3, color: msgColor)
                ),
                TextField(
                  controller: userController,
                  decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'Username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    )
                  )
                ),
                Text(
                  '',
                  style: TextStyle(height: 1)
                ),
                TextField(
                  controller: passController,
                  decoration: InputDecoration(
                    icon: Icon(Icons.enhanced_encryption),
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    )
                  ),
                  obscureText: true
                ),
                Text(
                  '',
                  style: TextStyle(height: 2)
                ),
                RaisedButton(
                  onPressed: onClick,
                  child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 15, color: Colors.white)
                  ),
                  color: Colors.deepPurpleAccent,
                ),
                Text(
                  "Don't have an account?",
                  style: TextStyle(height: 3),
                ),
                RaisedButton(
                  onPressed: () {},
                  child: const Text(
                  'Sign up',
                  style: TextStyle(fontSize: 15, color: Colors.white)
                  ),
                  color: Colors.deepPurpleAccent,
                ),
                // Padding(padding: EdgeInsets.all(20)),
                // Text(
                //   msg,
                //   style: TextStyle(height: 3, color: color),
                // )
              ],
            ),
          ),
        )
      ),
    );
  }
}