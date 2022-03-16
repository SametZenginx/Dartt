/*
Another collection structure is the Set structure.
It does not keep the most important different elements from the list in order, 
so we cannot use indexes as in lists.
Another difference is that there is only one element from an element, so each element is different from each other.
The contains method can be used to check elements without an index. 
Apart from that, the methods in the lists are also valid for the set.
*/
// It does not keep the most important different elements from the list
// in order and keeps one from each element.

main(List<String> args) {
  Set<String> names = Set();
  names.add("Mustafa");
  names.add("Ali");
  names.add("Fatma");
  names.add("Fatma");
  names.add("Musti");
  names.add("Fatma");
  if (names.contains("Fatma")) {
    print("Fatma is here.");
  }
  bool result = names.remove("Fatma");
  print(result);
  print("******************");

  for (String i in names) {
    print("Name: $i"); //Used 'Fatma' only once.
  }

  Set<int> nums = Set.from([1, 2, 3, 4, 7, 2, 4, 1, 5]);
  for (int x in nums) {
    print("no: $x");
  }

  nums.clear();
  List<int> evenNumbs = [0, 2, 4, 6, 8, 10, 8, 6, 4, 2, 0];
  nums.addAll(evenNumbs); //Add Lists or set etc.

  print(nums);
}
