/*
Use "for" when you know how many times you will work.

Use "while" when you want to check the condition first and then perform the action.

Use "do-while" when you want to do it once and then check the condition and perform the action.

*/
main(List<String> args) {
// for loop: Very useful loop.

  for (int i = 0; i <= 10; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
  List NameList = ["Mustafa", "Hasan", "Ali"]; // Example
  for (int i = 0; i < NameList.length; i++) {
    print("${NameList[i]}");
  }

// while loop: Sometimes it doesn't work even once. by condition

  int count = 0;

  while (count < 3) {
    // it works three times.
    print("Count value is: $count");
    count++; // Definitely use.
  }

// do-while loop: It definitely works once.

  int count2 = 0;
  do {
    // it works three times.
    print("Count value is: $count2");
    count2++; // Definitely use.
  } while (count2 < 5);

// IMPORTANT: In while, check first, then do. In do-while, do first, then check.

  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      print("i = 5 :D");
      break;
    }
    print("$i");
  }
  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      continue; // Don't write 5
    }
    print("$i");
  }
// Nested loop: We named the loop and we can control it remotely.
  outherLoop: //Label
  for (int i = 0; i < 10; i++) {
    print("*****************");
    for (int j = 0; j < 10; j++) {
      if (i == 2) {
        continue outherLoop;
      }
      print("$i x $j = ${i * j}");
    }
  }
}
