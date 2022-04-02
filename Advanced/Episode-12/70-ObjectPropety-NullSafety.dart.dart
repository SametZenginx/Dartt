import 'dart:math';

/**
Null safety properties are also valid for the variables (property) that we create while creating our classes. 
When we implement these features for the first time, it can be confusing.
  *
Because these properties have getter and setter methods directly or indirectly. 
Therefore, these variables can produce different values in the same scope. 
You may get different results each time you access these structures.
  *
The solution to this is to store the relevant data in a variable and 
check it over the variable, not the getter.
*/


class TextGenerator {
  String? text = "Samet";
}

class RandomTextGenerator {
  String? valueGenerate() {
    //maybe string or maybe null return.
    if (Random().nextBool()) {
      return "String Expression";
    } else
      return null;
  }

  int? get age => 34;
}

main(List<String> args) {
  final generator = RandomTextGenerator();
  String? result = generator.valueGenerate();
  if (generator.valueGenerate() == null) {
    print("Null value.");
  } else {
    printText(result);
  }

  TextGenerator x = TextGenerator();
  String? tex = x.text;
  if (tex != null) {
    printText(x.text);
  }
}

void printText(String? expression) {
  print(expression);
}
