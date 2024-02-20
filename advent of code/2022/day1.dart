(Iterable<num>, int) _emptyRow(Iterable<num> totals, num total) => ([...totals, total], 0);
num _formatString(Iterable<num> totals, num total) => _maxKey([...totals, total], [...totals, total].reduce(_max));
num _maxKey(Iterable<num> totals, num total) => totals.toList().indexOf(total) + 1;
num _max(num a, num b) => a > b ? a : b;
num _add(num a, num b) => a + b;
num day1(Iterable<String> data, [Iterable<num>? totals = null, num total = 0, int i = 0]) {
  if (data.length - 1 <= i) return _formatString(totals!, total);
  if (data.elementAt(i) == "") (totals, total) = _emptyRow(totals!, total);
  if (data.elementAt(i) != "") total = _add(total, num.tryParse(data.elementAt(i)) ?? 0);
  return day1(data, totals, total, i + 1);
}
