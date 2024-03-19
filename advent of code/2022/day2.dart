const Map<String, String> rps = {
  "A": "Rock",
  "B": "Paper",
  "C": "Scissors",
  "X": "Rock",
  "Y": "Paper",
  "Z": "Scissors",
};

const Map<String, int> points = {
  "Rock": 1,
  "Paper": 2,
  "Scissors": 3,
};

const Map<String, int> results = {
  "Rock-Paper": 6,
  "Paper-Scissors": 6,
  "Scissors-Rock": 6,
  "Rock-Rock": 3,
  "Paper-Paper": 3,
  "Scissors-Scissors": 3,
  "Paper-Rock": 0,
  "Scissors-Paper": 0,
  "Rock-Scissors": 0,
};

int day2(List<List<String>> data, [int i = 0, int total = 0]) => i >= data.length
    ? total
    : day2(data, i + 1, total + points[rps[data[i][1]]]! + results["${rps[data[i][0]]}-${rps[data[i][1]]}"]!);
