List<int> findEvens(List<int> data) {
  List<int> output = [];
  for (var number in data) {
    if (number % 2 == 0) {
      output.add(number);
    }
  }
  return output;
}

List<int> findOdds(List<int> data) {
  List<int> output = [];
  for (var number in data) {
    if (number % 2 != 0) {
      output.add(number);
    }
  }
  return output;
}
