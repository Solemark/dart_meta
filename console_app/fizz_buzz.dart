class Fizzbuzz {
  int fizz = 0;
  int buzz = 0;
  int max = 0;

  Fizzbuzz(int fizz, int buzz, int max) {
    this.fizz = fizz;
    this.buzz = buzz;
    this.max = max;
  }

  String get play {
    String output = '';
    for (var number in List<int>.generate(max, (i) => i + 1)) {
      number % this.fizz == 0 ? output += 'fizz' : null;
      number % this.buzz == 0 ? output += 'buzz' : null;
      !output.endsWith('z') ? output += '$number' : null;
      number != this.max ? output += '\n' : null;
    }
    return output;
  }
}
