import 'package:flutter/material.dart';
import 'package:rollingdice/dice_roller.dart';

class ContainerGradient extends StatelessWidget {
  const ContainerGradient({
    required this.colors,
    super.key,
  });

  ContainerGradient.blue({
    super.key,
  }) : colors = [
          const Color.fromARGB(255, 2, 12, 106),
          const Color.fromARGB(255, 4, 125, 230)
        ];

  ContainerGradient.red({
    super.key,
  }) : colors = [
          const Color.fromARGB(255, 65, 2, 6),
          const Color.fromARGB(255, 236, 27, 62)
        ];

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: colors,
        ),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}
