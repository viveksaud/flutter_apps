// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
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
        Image.asset('images/dice1.png'),//Image(image: AssetImage('images/dice1.png'))
      ],);
  }
}