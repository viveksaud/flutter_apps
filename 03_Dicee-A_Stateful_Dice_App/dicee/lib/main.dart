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

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 3;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            // it is used to fix the overflow
            // flex: 1,//flex is just a ratio given to the expanded item// by default, its value is 1, so expanded item are equal in size
            child: TextButton(
                //button has already padding of 16 px on left and right
                onPressed: () {
                  setState(() {
                    leftDiceNumber = 6;
                    print('Left Button got clicked!$leftDiceNumber');
                  });
                },
                child: Image.asset(
                    'images/dice$leftDiceNumber.png')), //Image(image: AssetImage('images/dice1.png'))
          ),
          Expanded(
            // flex: 1,
            child: TextButton(
              onPressed: () {
                print('Right Button got clicked!');
              },
              child: Image.asset('images/dice1.png'),
            ), //Image(image: AssetImage('images/dice1.png'))
          ),
        ],
      ),
    );
  }
}
/*The imp concept is
when we want to update something onscreen, we will give it something
that can change, namely a variable, right? Something that can vary. And then will change the variable inside
a set state triggered by some sort of user action.
In this case, when I click on the button, I want to update the leftDiceNumber to two.
Then I call set state which looks inside the entire curly braces of my build method to see where is
that used.
And find it update it in this case. Then it redraws this entire image.
So the effect is I click on this and the image updates, almost instantaneously.
 */