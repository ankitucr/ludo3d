import 'package:flutter/material.dart';

class BoardWidget extends StatelessWidget {
  const BoardWidget({super.key});

  static const Color red = Color(0xFFE53935);
  static const Color green = Color(0xFF43A047);
  static const Color yellow = Color(0xFFFDD835);
  static const Color blue = Color(0xFF1E88E5);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 340,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 3),
      ),
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                _home(red),
                _path(),
                _home(green),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                _path(),
                _center(),
                _path(),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                _home(yellow),
                _path(),
                _home(blue),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _home(Color color) {
    return Expanded(
      child: Container(
        color: color,
        child: Center(
          child: Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
            ),
          ),
        ),
      ),
    );
  }

  Widget _path() {
    return const Expanded(
      child: ColoredBox(color: Colors.white),
    );
  }

  Widget _center() {
    return const Expanded(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFE53935),
              Color(0xFFFDD835),
              Color(0xFF43A047),
              Color(0xFF1E88E5),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
    );
  }
}
