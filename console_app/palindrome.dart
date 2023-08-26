bool checkPalindrome(String input) {
  int c = input.length - 1;
  bool output = true;
  for (int i = 0; i < c; i++, c--) {
    if (input[i] != input[c]) {
      output = false;
      break;
    }
  }
  return output;
}
