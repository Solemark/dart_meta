List<dynamic> new_array(List<dynamic> input, [int i = 0, List<dynamic>? output = null]) {
  int j = input.length - 1;
  if (output == null) output = [];
  if (i > input.length - 1) return output;
  return new_array(input, i + 1, [...output, input[j - i]]);
}

List<dynamic> same_array(List<dynamic> input, [int? i = null, int? j = null]) {
  if (i == null) i = 0;
  if (j == null) j = input.length - 1;
  if (i > j) return input;
  dynamic x = input[i];
  dynamic y = input[j];
  input[j] = x;
  input[i] = y;
  return same_array(input, i + 1, j - 1);
}
