import 'package:flutter/material.dart';

class DiceWidget extends StatelessWidget {
  final int value;
  final VoidCallback onRoll;

  const DiceWidget({
    super.key,
    required this.value,
    required this.onRoll,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onRoll,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        width: 80,
        height: 80,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              blurRadius: 10,
              offset: Offset(0, 4),
              color: Colors.black26,
            )
          ],
        ),
        child: Text(
          value == 0 ? "ROLL" : value.toString(),
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
