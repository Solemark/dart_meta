class Calculator {
  num x = 0;
  num y = 0;

  Calculator(num x, num y) {
    this.x = x;
    this.y = y;
  }

  num get add => this.x + this.y;
  num get subtract => this.x - this.y;
  num get multiply => this.x * this.y;
  num get divide => this.x / this.y;
}
