class StringManipulation {
  //! Trimming
  void trimming() {
    /*
    trim() removes leading and trailing whitespace from a string.
    trimLeft() removes leading whitespace from a string.
    trimRight() removes trailing whitespace from a string.

     */
    const userInput = '            wwww  221B Baker St.  wwww            ';
    final trimmed = userInput.trimRight();
    print(trimmed);
  }

  //! padding
  void padding() {
    final time = Duration(hours: 5, minutes: 101, seconds: 3);
    // final DateTime now = DateTime.now();
    var hours = "${time.inHours}".padLeft(2, "0");
    final minutes = "${time.inMinutes % 60}".padLeft(2, "0");
    final seconds = "${time.inSeconds % 60}".padLeft(2, "0");
    // var nowhours = now.hour;
    // var nowminutes = now.minute;
    // var nowseconds = now.second;
    final stringTime = '$hours:$minutes:$seconds';
    // final stringNow = '$nowhours:$nowminutes:$nowseconds';
    print(stringTime);
    // print(stringNow);
  }

//!  Splitting and Joining
  splittiningAndJoining() {
    //! comma-separated values (CSV)
    const csvFileLine = 'Nergui,Bavuudorj,21,Ulaanbaatar,Mongolia';
    final splitted = csvFileLine.split(",").join("_");
    print(splitted);
  }

//!  Replacing
  void replacing() {
    const originalString = 'Hello World!';
    final replaced = originalString.replaceAll(' ', '-');
    print(replaced);
  }

  //! exercise
  ex() {
    /*
    France
 USA
 Germany
 Benin
 China
 Mexico
 Mongolia
     */
    const countries = """
 France
 USA
 Germany
 Benin
 China
 Mexico
 Mongolia""";
    final splitted = countries.split("\n");
    print(splitted);
    for (var line in splitted) {
      print('Country: $line');
    }
  }

  //! exercise
  ex2() {
// Find an emoji online to replace   :]  with in the following text:
// How's the Dart book going? :]
    const text = 'How\'s the Dart book going? :]';
    final replaced = text.replaceAll(':]', '0xF0 0x9F 0x99 0x82');
    print(replaced);
  }

  //! building a string
  void buildingString() {
    // var string = "Hello" " my name is ";
    // const name = "Ahmed";
    // string += name;
    // print(string);
    final message = StringBuffer();
    // message.write("Hello ");
    // message.write("My Name Is ");
    // message.write("Ahmed");
    // print(message.toString());
    // for (var i = 2; i <= 1024; i *= 2) {
    //   message.write(i);
    //   message.write(" ");
    // }
    // print(message.toString().trimRight().split(" "));
    // Method 1: Build both patterns side by side
    StringBuffer buffer = StringBuffer();
    int maxStars = 9;

    for (int i = 0; i <= maxStars; i++) {
      // Left side: ascending pattern (1 to 9 stars)
      String leftSide = '*' * i;

      // Right side: descending pattern (9 to 1 stars)
      String rightSide = '*' * (maxStars - i + 1);

      // Combine with some spacing
      buffer.write(leftSide);
      buffer.write(' '); // Add 2 spaces between patterns
      buffer.write(rightSide);

      // Add newline except for last line
      if (i < maxStars) {
        buffer.writeln();
      }
    }
    print(buffer.toString());
  }
}

void main(List<String> args) {
  StringManipulation strings = StringManipulation();
  strings.buildingString();
}
