num _finalKey(Iterable<num> totals, num total) => _highestKey([...totals, total], [...totals, total].reduce(_max));
num _highestKey(Iterable<num> totals, num total) => totals.toList().indexOf(total) + 1;
num _newTotal(num total, String item) => item != "" ? _add(total, num.parse(item)) : 0;
Iterable<num> _emptyRow(Iterable<num> totals, num total) => [...totals, total];
num _max(num x, num y) => x > y ? x : y;
num _add(num x, num y) => x + y;
num day1(Iterable<String> data, Iterable<num> totals, [num total = 0, int i = 0]) {
  if (data.length - 1 <= i) return _finalKey(totals, total);
  if (data.elementAt(i) == "") totals = _emptyRow(totals, total);
  return day1(data, totals, _newTotal(total, data.elementAt(i)), i + 1);
}
