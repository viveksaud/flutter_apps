// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red.shade500,
        appBar: AppBar(
          backgroundColor: Colors.red.shade500,
          title: Center(
            child: Text('Dicee'),
          ),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(// it is used to fix the overflow 
          flex: 1,//flex is just a ratio given to the expanded item// by default, its value is 1, so expanded item are equal in size
          child: Image.asset('images/dice1.png'), //Image(image: AssetImage('images/dice1.png'))
        ),
        Expanded(
          flex: 1,
          child: Image.asset('images/dice1.png'), //Image(image: AssetImage('images/dice1.png'))
        ),
      ],
    );
  }
}
