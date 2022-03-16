//Very important lesson, method page.

void main(List<String> args) {
  List<int> numbs = [10, 8, 4, 11, 12];

  print(numbs.first);
  print(numbs.last);
  print(numbs.isEmpty); // Empty? boolean value.
  print(numbs.isNotEmpty); //Empty? boolean value.

  List<int> numbs1 = [10, 5, 4, 3, 11, 5, 212];

  if (numbs1.isNotEmpty) {
    print(numbs1.first);
    print(numbs1.last);
  }
  print("Empty? : " + numbs1.isEmpty.toString());
  print("Number of elements: ${numbs1.length}");
  print("Print in reverse: ${numbs1.reversed}"); //Just reverse printed.
  numbs1.add(23);
  print(numbs1);

  numbs1.remove(3); // Deletes the given element.
  print(numbs1);

  numbs1.removeAt(2); // Deletes the given index.
  print(numbs1);

  // numbs1.clear(); //Clear it.
  if (numbs1.contains(10)) {
    print(numbs1);
  } else {
    numbs1.add(9);
    print(numbs1);
  }
  print(numbs1.elementAt(2)); // What's in the 2nd index?
  print(numbs1.indexOf(11)); // Which index has 11?
  numbs1.shuffle(); // Shuffles the elements of this list randomly
  print(numbs1); // Different from reverse.
}
