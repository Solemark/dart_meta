List<String> multiplicationTables(int start, int max) {
  List<String> output = [];
  for (int i = 0; i <= max; i++) {
    output.add('$start x $i = ${start * i}');
  }
  return output;
}
