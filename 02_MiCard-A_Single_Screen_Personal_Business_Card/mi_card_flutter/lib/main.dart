// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // to hide debug mode banner
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 65,
                // backgroundImage: NetworkImage('https://images.pexels.com/photos/3680219/pexels-photo-3680219.jpeg?auto=compress&cs=tinysrgb&w=600'),
                backgroundImage: AssetImage("images/01_img.png"),
              ),
              Text(
                'Vivek Saud',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'DEVELOPER',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(178, 223, 219, 1),
                  letterSpacing: 2.5,
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 12, horizontal: 21),
                padding: EdgeInsets.all(9),
                child: Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.teal
                      ),
                    SizedBox(width: 15),
                    Text(
                      '9848123456', 
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontSize: 21,
                        fontFamily: 'SourceSansPro'),
                      ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 12, horizontal: 21),
                padding: EdgeInsets.all(9),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    SizedBox(width: 15,),
                    Text(
                      'viveksaud@gmail.com',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'SourceSansPro',
                        fontSize: 19,
                      ),)
                  ]
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
