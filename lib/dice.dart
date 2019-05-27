import 'package:flutter/material.dart';

import 'random.dart';

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int value = 1;
  RandomInteger _randomInteger = RandomInteger();

  int getNewDiceValue() {
    int newValue;

    do {
      newValue = _randomInteger.between(1, 6);
    } while (newValue == value);

    return newValue;
  }

  void throwTheDices() {
    setState(() {
      value = getNewDiceValue();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
          onPressed: throwTheDices,
          child: Image.asset('images/dice$value.png')),
    );
  }
}
