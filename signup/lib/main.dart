import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(Signup());

class Signup extends StatefulWidget {
  @override
  SignupState createState() => SignupState();
}

class SignupState extends State<Signup> {
  TextEditingController pass1Controller = TextEditingController();
  TextEditingController pass2Controller = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  var pass1 = '';
  var pass2 = '';
  var msg = '';

  onClick() {
    setState(() {
      pass1 = pass1Controller.text;
      pass2 = pass2Controller.text;
      
      if (nameController.text.isEmpty) {
        msg = 'Please enter your name';
      }
      else if (emailController.text.isEmpty) {
        msg = 'Please enter your email id';
      }
      else if (pass1.length >= 10 && !pass1.contains(RegExp(r'\W')) && RegExp(r'\d+\w*\d+').hasMatch(pass1)) {
        if (pass1 == pass2) {
          msg = 'Account created';
        } else 
          msg = 'Passwords do not match';
      }
       else {
        msg = 'Invalid password';
      }
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Signup Page',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text('Sign up'),
        ),
        body: Container(
          padding: const EdgeInsets.all(10.0),
          
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'Enter your name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    )
                  )
                ),
                Text(
                  '',
                  style: TextStyle(height: 0.3)
                ),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    icon: Icon(Icons.alternate_email),
                    hintText: 'Enter a valid e-mail id',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    )
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                Text(
                  '',
                  style: TextStyle(height: 0.3)
                ),
                TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.phone_android),
                    hintText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    )
                  ),
                  keyboardType: TextInputType.number,
                ),
                Text(
                  '',
                  style: TextStyle(height: 0.3)
                ),
                TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.business),
                    hintText: 'College Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    )
                  )
                ),
                Text(
                  '',
                  style: TextStyle(height: 0.3)
                ),
                TextField(
                  controller: pass1Controller,
                  decoration: InputDecoration(
                    icon: Icon(Icons.enhanced_encryption),
                    hintText: 'Enter a password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    )
                  ),
                  obscureText: true
                ),
                Text(
                  '',
                  style: TextStyle(height: 0.3)
                ),
                TextField(
                  controller: pass2Controller,
                  decoration: InputDecoration(
                    icon: Icon(Icons.enhanced_encryption),
                    hintText: 'Re-enter password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    ),                    
                  ),
                  obscureText: true,
                ),
                Text(
                  '',
                  style: TextStyle(height: 3)
                ),
                RaisedButton(                  
                  onPressed: onClick,
                  child: const Text(
                    'Create an account',
                    style: TextStyle(fontSize: 15, color: Colors.white)
                  ),
                  // margin: EdgeInsets.all(20.0),
                  color: Colors.deepPurpleAccent,
                ),
                Text(
                  msg,
                  style: TextStyle(height: 3)
                )
              ],
            ),
          ),
        ) 
      ),
    );
  }
}
