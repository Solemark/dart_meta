int day2(List<String> games, Map<String, int> dice) {
  final Iterable<List<String>> ga_rd = games.map((game) => game.replaceAll("; ", ";").replaceAll(", ", ",").split(";"));
  final Iterable<bool> rounds_results = ga_rd.map((game) => _play_game(game, dice));
  return _calculate(rounds_results);
}

bool _play_game(List<String> game, Map<String, int> dice) {
  final Iterable<List<String>> rounds = game.map((round) => round.split(","));
  final Iterable<Iterable<bool>> round_comp_results = rounds.map((game) => _check_game(game, dice));
  final Iterable<bool> round_results = round_comp_results.map((game) => _determine_result(game));
  return _determine_result(round_results);
}

Iterable<bool> _check_game(List<String> game, Map<String, int> dice) => game.map((round) => check_round(round, dice));

bool check_round(String round, Map<String, int> dice) {
  final List<String> components = round.split(" ");
  return int.parse(components[0]) <= dice[components[1]]! ? true : false;
}

bool _determine_result(Iterable<bool> game) => game.contains(false) ? false : true;

int _calculate(Iterable<bool> game, [int index = 0, int total = 0]) {
  if (index >= game.length) {
    return total;
  }
  if (game.elementAt(index)) {
    total += (index + 1);
  }
  return _calculate(game, (index + 1), total);
}
