import 'dart:math';
import 'player.dart';

class GameController {
  int currentPlayer = 0;
  int dice = 0;

  final Random _random = Random();

  List<Player> players = [
    Player("Red", 0xFFE53935),
    Player("Green", 0xFF43A047),
  ];

  // roll dice
  void rollDice() {
    dice = _random.nextInt(6) + 1;
  }

  // move selected token
  void moveToken(int tokenIndex) {
    Player p = players[currentPlayer];

    // open token
    if (p.tokens[tokenIndex] == -1 && dice == 6) {
      p.tokens[tokenIndex] = 0;
    }
    // move token
    else if (p.tokens[tokenIndex] >= 0) {
      p.tokens[tokenIndex] += dice;

      if (p.tokens[tokenIndex] > 51) {
        p.tokens[tokenIndex] = 51;
      }
    }

    // next turn (unless 6)
    if (dice != 6) {
      currentPlayer = (currentPlayer + 1) % players.length;
    }

    dice = 0;
  }
}
