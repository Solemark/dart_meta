import 'dart:math';

class Dice {
  int max = 0;

  Dice(int max) {
    this.max = max;
  }

  int get roll => Random().nextInt(this.max) + 1;
}
