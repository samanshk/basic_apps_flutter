import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(10)),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '<',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Jaipur',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  '...',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Divider(height: 1, color: Colors.grey,),
          Padding(padding: EdgeInsets.all(10),),
          CircleAvatar(
            radius: 70,
            // backgroundImage: NetworkImage('https://k6u8v6y8.stackpathcdn.com/blog/wp-content/uploads/2018/06/Historical-Sites-in-Jaipur.jpg'),
            backgroundImage: AssetImage('assets/profile.jpeg'),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Text(
            '@jaipur',
            style: TextStyle(fontWeight: FontWeight.bold)
          ),
          Padding(padding: EdgeInsets.all(10),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    '1M',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)
                  ),
                  Text(
                    'Following',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    '500k',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)
                  ),
                  Text(
                    'Fans',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    '100k',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)
                  ),
                  Text(
                    'Hearts',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              )
            ],
          ),
          Padding(padding: EdgeInsets.all(10)),
          MaterialButton(
            onPressed: () {},
            color: Colors.red[800],
            child: Text(
              'Follow',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 15)
            ),
            padding: EdgeInsets.all(15),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Text(
            'The royal city.\nThe pink city. #cityOfDreams',
            style: TextStyle(color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          
          Padding(padding: EdgeInsets.all(10)),          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset('assets/profile.jpeg', height: 100, width: 100),
              Image.asset('assets/profile.jpeg', height: 100, width: 100),
              Image.asset('assets/profile.jpeg', height: 100, width: 100),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset('assets/profile.jpeg', height: 100, width: 100),
              Image.asset('assets/profile.jpeg', height: 100, width: 100),
              Image.asset('assets/profile.jpeg', height: 100, width: 100),
            ],
          ),          
        ],
      )
    ); 
    
  }
}