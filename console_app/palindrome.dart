bool check_palindrome(String input) => _check(input, 0, input.length - 1);

bool _check(String input, int left, int right) {
  if (left >= right) return true;
  if (input[left] != input[right]) return false;
  return _check(input, left + 1, right - 1);
}
