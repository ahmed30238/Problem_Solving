//
void main(List<String> args) {
  print(ElectronicsShop.getMoneySpent([40, 50, 60], [5, 8, 12], 60));
}

class ElectronicsShop {
  static int getMoneySpent(List<int> keyboards, List<int> drives, int b) {
    List<int> possibles = [];
    int spentMoney = 0;
    for (var i = 0; i < keyboards.length; i++) {
      for (var j = 0; j < drives.length; j++) {
        possibles.add(keyboards[i] + drives[j]);
      }
    }

    possibles.sort();
    print(possibles);
    for (var i = possibles.length - 1; i >= 0; i--) {
      if (possibles[i] <= b) {
        spentMoney = possibles[i];
        break;
      } else {
        spentMoney = -1;
      }
    }

    /// in case of reverse sortion
    // possibles.sort((a, b) => b.compareTo(a)); // for reverse sortion
    // for (var i = 0; i < possibles.length; i++) {
    //   if (possibles[i] <= b) {
    //     spentMoney = possibles[i];
    //     break;
    //   } else {
    //     spentMoney = -1;
    //   }
    // }
    return spentMoney;
  }
}
