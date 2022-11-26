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
            image: NetworkImage('https://media.istockphoto.com/id/1382204548/photo/lord-shiva-hindu-god-stock-photo.jpg?b=1&s=170667a&w=0&k=20&c=o8IynHJ2VhwIhzQXBR9TJK3wBt-EchouwPNkVNcOh8Q='),
          ),
        ),
      ),
    ),
  );
}


