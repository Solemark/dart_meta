import 'dart:math';

double getArea(double radius) => (radius <= 0) ? 0 : pi * (radius * radius);
double getCircumference(double radius) => (radius <= 0) ? 0 : (2 * pi * radius);
