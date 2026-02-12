import 'package:flutter/material.dart';

class TokenWidget extends StatelessWidget {
  final Color color;
  final VoidCallback onTap;

  const TokenWidget({
    super.key,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.6),
              blurRadius: 6,
              spreadRadius: 1,
            ),
          ],
          border: Border.all(color: Colors.white, width: 2),
        ),
      ),
    );
  }
}
