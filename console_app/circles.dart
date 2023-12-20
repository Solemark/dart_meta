import 'dart:math';

class Circles {
  num radius = 0;

  Circles(radius) {
    this.radius = radius;
  }

  num get area => this.radius <= 0 ? 0 : pi * pow(this.radius, 2);
  num get circumference => this.radius <= 0 ? 0 : 2 * pi * this.radius;
}
