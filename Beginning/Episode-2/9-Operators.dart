main(List<String> args) {
  double numb1 = 9;
  double numb2 = 6;

// Arithmetic Operators
  print("$numb1 + $numb2 = ${numb1 + numb2}");
  print("$numb1 - $numb2 = ${numb1 - numb2}");
  print("$numb1 * $numb2 = ${numb1 * numb2}");
  print("$numb1 / $numb2 = ${numb1 / numb2}");
  print("$numb1 % $numb2 = ${numb1 % numb2}");

// Assignment And Comparison Operators:
  double numb3 = 5;
  numb3 = numb3 + 5;
  numb3 += 5; // Same thing.
  print(numb3); // numb3 = 15

  numb3 %= 4;
  print(numb3); // 3

  // < , > , <= , >= , == , !=
  double numb4 = 9;
  double numb5 = 5;

  if (numb4 <= numb5) {
    print("DON'T WORK.");
  } else {
    print("NUMB 9 OVER THAN NUMB 5");
  }

  String name = "Mustafa";
  String surName = "Zengin";

  if (name != surName) {
    print("Not same.");
  } else {
    print("Same.");
  }
// Logical Operators
// && , || , !

  bool if1 = true;
  bool if2 = false;

  print(if1 && if2); // and operator.
  print(if1 || if2); // or operator.
  print(!(!if1));
}
