import 'dart:math';

class GachaRoll {
  int rolls = 0;
  int current_roll = 0;
  int rate = 0;
  int pity = 0;
  String rarity = '';
  String output = '';
  String game = '';
  bool error = false;

  GachaRoll(String game) {
    this.game = game;
  }

  String get play {
    switch (this.game) {
      case 'FGO':
        rate = 100;
        pity = 300;
        rarity = '5*';
        break;
      case 'AK':
        rate = 50;
        pity = 100;
        rarity = '6*';
        break;
      case 'GI':
        rate = 60;
        pity = 90;
        rarity = '5*';
        break;
      default:
        output = 'Unknown Game!';
        error = true;
    }
    if (!error) {
      while (true) {
        rolls++;
        current_roll = Random().nextInt(rate + 1);
        if (rolls == pity) {
          output = 'You hit pity at $pity rolls for your $rarity in ${this.game}';
          break;
        }
        if (current_roll == rate) {
          output = 'It took $rolls rolls to get a $rarity in ${this.game}';
          break;
        }
      }
    }
    return output;
  }
}
