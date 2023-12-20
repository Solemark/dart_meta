import 'dart:math';

class Dice {
  int max;
  Dice(this.max);

  int get roll => Random().nextInt(this.max) + 1;
}
