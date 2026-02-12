import 'package:flutter/material.dart';
import '../game/game_controller.dart';
import '../ui/board_widget.dart';
import '../ui/dice_widget.dart';
import '../ui/token_widget.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  final game = GameController();

  @override
  Widget build(BuildContext context) {
    final player = game.players[game.currentPlayer];

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text("${player.name} Turn"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          // Board
          const Center(child: BoardWidget()),
          const SizedBox(height: 25),

          // Tokens
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(2, (i) {
              return Padding(
                padding: const EdgeInsets.all(8),
                child: TokenWidget(
                  color: Color(player.color),
                  onTap: () {
                    setState(() {
                      game.moveToken(i);
                    });
                  },
                ),
              );
            }),
          ),

          const SizedBox(height: 25),

          // Dice
          DiceWidget(
            value: game.dice,
            onRoll: () {
              setState(() {
                game.rollDice();
              });
            },
          ),
        ],
      ),
    );
  }
}
