class Reverse {
  List<dynamic> input = [];

  Reverse(List<dynamic> input) {
    this.input = input;
  }

  List<dynamic> get newArray {
    List<dynamic> output = [];
    for (int i = this.input.length - 1; i >= 0; i--) {
      output.add(this.input[i]);
    }
    return output;
  }

  List<dynamic> get sameArray {
    dynamic x, y = null;
    for (int i = 0, c = this.input.length - 1; i < c; i++, c--) {
      x = this.input[i];
      y = this.input[c];
      this.input[i] = y;
      this.input[c] = x;
    }
    return this.input;
  }
}
