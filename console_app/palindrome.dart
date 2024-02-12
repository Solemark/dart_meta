bool is_palindrome(String input) => _check_palindrome(input, 0, input.length - 1);

bool _check_palindrome(String input, int left, int right) {
  if (left >= right) return true;
  if (input[left] != input[right]) return false;
  return _check_palindrome(input, ++left, --right);
}
