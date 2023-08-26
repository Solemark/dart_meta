List<int> reverseSameArray(List<int> input) {
  int x = 0;
  int y = 0;
  int c = input.length - 1;
  for (int i = 0; i < c; i++, c--) {
    x = input[i];
    y = input[c];
    input[i] = y;
    input[c] = x;
  }
  return input;
}

List<int> reverseArray(List<int> input) {
  List<int> output = [];
  for (int i = input.length - 1; i >= 0; i--) {
    output.add(input[i]);
  }
  return output;
}
