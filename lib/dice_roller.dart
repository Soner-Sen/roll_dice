import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({Key? key}) : super(key: key);

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRollNumber = 2;

  void rollDice() {
    setState(() {
      currentDiceRollNumber = randomizer.nextInt(6) + 1; //0 <> 5 => 1 <> 6
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRollNumber.png',
          width: 250,
        ),
        const SizedBox(height: 50),
        ElevatedButton(onPressed: rollDice, child: const Text('Roll Dice :)'))
      ],
    );
  }
}
