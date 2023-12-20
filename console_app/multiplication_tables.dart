class MultiplicationTables {
  int start = 0;
  int max = 0;

  MultiplicationTables([int start = 0, int max = 0]) {
    this.start = start;
    this.max = max;
  }

  List<String> get table {
    List<String> output = [];
    for (int element in List<int>.generate(max + 1, (i) => i)) {
      output.add('$start x $element = ${start * element}');
    }
    return output;
  }
}
