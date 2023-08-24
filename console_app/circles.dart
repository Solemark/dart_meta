import 'dart:math';

double getArea(double radius) {
  double output = 0;
  if (radius <= 0) {
    output = 0;
  } else {
    output = pi * (radius * radius);
  }
  return output;
}

double getCircumference(double radius) {
  double output = 0;
  if (radius <= 0) {
    output = 0;
  } else {
    output = 2 * pi * radius;
  }
  return output;
}
