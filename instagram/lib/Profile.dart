import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Samansh',
          // textAlign: TextAlign.center
        ),
        backgroundColor: Colors.grey[100],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/02/24/15/41/dog-647528__340.jpg'),
                    radius: 50,
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text('1230', style: TextStyle(fontSize: 20),),
                              Text('posts', style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                          Padding(padding: EdgeInsets.all(10),),
                          Column(
                            children: <Widget>[
                              Text('100k', style: TextStyle(fontSize: 20),),
                              Text('followers', style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                          Padding(padding: EdgeInsets.all(10),),
                          Column(
                            children: <Widget>[
                              Text('1100', style: TextStyle(fontSize: 20),),
                              Text('following', style: TextStyle(color: Colors.grey),)
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          MaterialButton(
                            onPressed: () {},
                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            // padding: EdgeInsets.symmetric(),
                            child: Text('Message'),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0), side: BorderSide(color: Colors.grey[300], width: 1)),
                          ),
                          // Icon(Icons.person_add),
                          MaterialButton(
                            onPressed: () {},
                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            child: Icon(Icons.person_add),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0), side: BorderSide(color: Colors.grey[300], width: 1)),
                          ),
                          Icon(Icons.arrow_drop_down),
                          // MaterialButton(
                          //   padding: EdgeInsets.all(0),
                          //   onPressed: () {},
                          //   child: Icon(Icons.arrow_drop_down),
                          //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0), side: BorderSide(color: Colors.grey[300], width: 1)),
                          // ),
                        ],
                      )


                    ],
                  ),

                ],
              ),
              Padding(padding: EdgeInsets.all(5)),
              Text(
                'Samansh Khandelwal',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.justify,
              ),
              Text(
                'Programmer',
                style: TextStyle(fontSize: 15, color: Colors.grey),
                textAlign: TextAlign.justify,
              ),
              Text(
                'Student at JECRC university',
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.justify,
              ),
              Text(
                'Lives in Jaipur, Rajasthan',
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.justify,
              ),
              Text(
                'lives in jagatpura',
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.justify,
              ),
              Padding(padding: EdgeInsets.all(5),),
              // Divider(thickness: 1, color: Colors.grey,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CircleAvatar(backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/02/24/15/41/dog-647528__340.jpg'), radius: 25,),
                  CircleAvatar(backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/02/24/15/41/dog-647528__340.jpg'), radius: 25,),
                  CircleAvatar(backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/02/24/15/41/dog-647528__340.jpg'), radius: 25,),
                  CircleAvatar(backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/02/24/15/41/dog-647528__340.jpg'), radius: 25,),
                  CircleAvatar(backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/02/24/15/41/dog-647528__340.jpg'), radius: 25,),
                ],
              ),
              Padding(padding: EdgeInsets.all(5),),
              Divider(thickness: 1, color: Colors.grey[300],),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.apps, size: 25, color: Colors.grey,),
                  Divider(thickness: 1, color: Colors.grey[300],),
                  Icon(Icons.list, size: 25, color: Colors.grey),
                  Divider(thickness: 1, color: Colors.grey[300],),
                  Icon(Icons.grid_on, size: 25, color: Colors.grey)
                ],
              ),
              Divider(thickness: 1, color: Colors.grey[300],),
              Padding(padding: EdgeInsets.all(10)), 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset('assets/profile.jpg', height: 100, width: 100),
                  Image.asset('assets/profile.jpg', height: 100, width: 100),
                  Image.asset('assets/profile.jpg', height: 100, width: 100),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset('assets/profile.jpg', height: 100, width: 100),
                  Image.asset('assets/profile.jpg', height: 100, width: 100),
                  Image.asset('assets/profile.jpg', height: 100, width: 100),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset('assets/profile.jpg', height: 100, width: 100),
                  Image.asset('assets/profile.jpg', height: 100, width: 100),
                  Image.asset('assets/profile.jpg', height: 100, width: 100),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}