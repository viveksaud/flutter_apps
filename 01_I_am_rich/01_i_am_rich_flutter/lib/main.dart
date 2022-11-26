import 'package:flutter/material.dart';

void main() {
  runApp(
     MaterialApp(
      debugShowCheckedModeBanner: false, // to hide debug mode banner
      home: Scaffold(
        appBar: AppBar(
          title: const Text("I Am Rich"),
          backgroundColor: Colors.purple[900],
        ),
        backgroundColor: Colors.deepPurple[400],
        body: const Center(
          child: Image(
            image: AssetImage('images/01_img.jpg'),
          ),
        ),
      ),
    ),
  );
}
