class Palindrome {
  String input = '';

  Palindrome(String input) {
    this.input = input;
  }

  bool get test {
    int c = this.input.length - 1;
    bool output = true;
    for (int i = 0; i < c; i++, c--) {
      if (this.input[i] != this.input[c]) {
        output = false;
        break;
      }
    }
    return output;
  }
}
