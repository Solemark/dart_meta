import 'dart:math';

/**
 * Data class for BMI
 */
class BMI {
  double height;
  double weight;
  BMI(this.height, this.weight);

  String get rating {
    String output = "";
    double total = this.weight / pow((this.height / 100), 2);
    if (total < 16.00) output = "Bulimic";
    if (total > 16.00 && total < 16.99) output = "Lean";
    if (total > 17.00 && total < 18.49) output = "Under";
    if (total > 18.50 && total < 24.99) output = "Normal";
    if (total > 25.00 && total < 29.99) output = "Over";
    if (total > 30.00 && total < 34.99) output = "Obese";
    if (total > 34.99) output = "Morbid";
    return output;
  }

  @override
  String toString() => "height: ${this.height}\nweight: ${this.weight}\nrating: ${this.rating}";
}
