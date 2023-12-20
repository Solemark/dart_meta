class Calculator {
  num x, y;
  Calculator(this.x, this.y);

  num get add => this.x + this.y;
  num get subtract => this.x - this.y;
  num get multiply => this.x * this.y;
  num get divide => this.x / this.y;
}
