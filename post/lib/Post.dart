import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Post extends StatefulWidget {
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  TextEditingController name = TextEditingController();
  TextEditingController location = TextEditingController();
  TextEditingController type = TextEditingController();
  TextEditingController mobile = TextEditingController();

  sendData() async {
    final response = await http.post('http://userapi.tk/shobhit/insertsos.php', body: {
      "name": name.text,
      "location": location.text,
      "type": "admin",
      "mobile": mobile.text,
    });
    print(response.body);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(padding: EdgeInsets.all(40),),
              Text(
                'Write an article',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              Padding(padding: EdgeInsets.all(10)),
              TextField(
                controller: name,
                decoration: InputDecoration(
                  hintText: 'Name',
                  icon: Icon(Icons.person, color: Colors.blue,),
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              TextField(
                controller: location,
                decoration: InputDecoration(
                  hintText: 'Location',
                  icon: Icon(Icons.email, color: Colors.blue,),
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              TextField(
                controller: type,
                decoration: InputDecoration(
                  hintText: 'Type',
                  icon: Icon(Icons.work, color: Colors.blue,),
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              TextField(
                controller: mobile,
                decoration: InputDecoration(
                  hintText: 'Mobile',
                  icon: Icon(Icons.apps, color: Colors.blue,),
                ),
                keyboardType: TextInputType.number,
              ),
              Padding(padding: EdgeInsets.all(10)),
              MaterialButton(
                onPressed: () {
                  sendData();
                },
                color: Colors.blue,
                child: Text(
                  'Post',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 20)
                ),
                padding: EdgeInsets.all(10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
