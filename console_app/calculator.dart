class Calculator {
  double x = 0;
  double y = 0;

  Calculator(double x, double y) {
    this.x = x;
    this.y = y;
  }

  double get add => this.x + this.y;
  double get subtract => this.x - this.y;
  double get multiply => this.x * this.y;
  double get divide => this.x / this.y;
}
