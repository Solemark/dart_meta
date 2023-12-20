import 'dart:math';

class Circles {
  double radius = 0;

  Circles(radius) {
    this.radius = radius;
  }

  double get area => this.radius <= 0 ? 0 : pi * pow(this.radius, 2);
  double get circumference => this.radius <= 0 ? 0 : 2 * pi * this.radius;
}
