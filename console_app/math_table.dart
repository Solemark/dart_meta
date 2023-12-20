class MathTable {
  int start = 0;
  int max = 0;
  MathTable([this.start = 0, this.max = 0]);

  List<String> get table {
    List<String> output = [];
    for (int element in List<int>.generate(max + 1, (i) => i)) {
      output.add('$start x $element = ${start * element}');
    }
    return output;
  }
}
