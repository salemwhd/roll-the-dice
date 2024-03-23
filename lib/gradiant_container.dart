// ignore_for_file: avoid_print

import 'dart:math';

import 'package:flutter/material.dart';
import 'dice_roller.dart';
//import 'custom_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

// ignore: must_be_immutable
class GradiantContainer extends StatelessWidget {
  GradiantContainer({required this.colors, super.key});

  final List<Color> colors;

  var num = Random().nextInt(10);
  var activeDice = 'assets/images/dice-4.png';

  void rollDice() {
    num = Random().nextInt(6) + 1;
    activeDice = 'assets/images/dice-$num.png';
    print('dice number is $num');
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
