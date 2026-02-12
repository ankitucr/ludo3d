class Player {
  final String name;
  final int color;

  // -1 = home position
  List<int> tokens = [-1, -1];

  Player(this.name, this.color);
}
