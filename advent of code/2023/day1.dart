int day1(List<String> input) {
  final Iterable<(int, int)> numbers = input.map((string) => _find_nums(string));
  final Iterable<int> results = numbers.map((nums) => nums.$1 + nums.$2);
  return results.reduce((total, elem) => total + elem);
}

(int, int) _find_nums(String string) {
  final Iterable<String> chars = string.split("");
  final Iterable<String> numbers = chars.where((i) => int.tryParse(i) is int);
  return (int.tryParse(numbers.first)! * 10, int.tryParse(numbers.last)!);
}
