import 'dart:math';

import 'package:flutter/material.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;
final randmizer = Random();
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDice = 'assets/images/dice-4.png';

  void rollDice() {
    var num = randmizer.nextInt(6) + 1;
    setState(() {
      activeDice = 'assets/images/dice-$num.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDice,
          width: 200,
        ),
        const SizedBox(height: 10),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 20,
            ),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
