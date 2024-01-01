//
void main(List<String> args) {
  print(CatsMouse.catAndMouse(1,3,2));
}

class CatsMouse {
  static String catAndMouse(int x, int y, int z) {
    int catAFar = (x - z).abs();
    int catBFar = (y - z).abs();
    if (catAFar < catBFar) {
      return "Cat A";
    }else if (catAFar> catBFar){
      return "Cat B";
    }else{
     return "Mouse C";
    }
  }
}
