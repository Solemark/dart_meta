List<String> multiplicationTables(int start, int max) {
  List<String> output = [];
  int result = 0;
  for (int i = 0; i <= max; i++) {
    result = start * i;
    output.add('$start x $i = $result');
  }
  return output;
}
