String fizzbuzz(int fizz, int buzz, int max, [String output = "", int current = 1]) {
  if (current > max) return output;
  current % fizz == 0 ? output += "fizz" : null;
  current % buzz == 0 ? output += "buzz" : null;
  !output.endsWith("z") ? output += "$current" : null;
  current != max ? output += "\n" : null;
  return fizzbuzz(fizz, buzz, max, output, ++current);
}
