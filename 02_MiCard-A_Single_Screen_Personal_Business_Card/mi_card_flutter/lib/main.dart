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
            // mainAxisSize: MainAxisSize.min,
            // verticalDirection: VerticalDirection.up,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            // crossAxisAlignment: CrossAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,// to make the children to the widht:double.infinity i.e. having width of screen
            children: <Widget>[
              Container(
                color: Colors.white,
                child: Text('container 1'),
                height: 200,
                width: 100,
              ),
              SizedBox(height: 10),//for creating space
              Container(
                color: Colors.red[300],
                child: Text('container 2'),
                height: 200,
                width: 100,
              ),
              SizedBox(height: 10,),
              Container(
                color: Colors.blue[900],
                child: Text('container 3'),
                height: 200,
                width: 100,
              ),
              Container( //empty container with width infinite for aligning children horizontally to end of screen
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
