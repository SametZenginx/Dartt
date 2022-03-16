/*
Instead of fixed length lists if we have dynamically growing and shrinking collections
We use growing lists. We don't need to size these lists by default.
Its definition is similar to fixed length arrays,
except that we do not specify the size of the list here.

add element, clear deletes all elements, remove deletes the given element,
removeAt deletes the element in the specified index
We can also update an element in a certain index using [].
*/

void main(List<String> args) {
  List<int?> numbs = []; // Dynamic List
//List<int> numbs4 = List.empty(growable: true);
//These are same.
  numbs.add(1);
  numbs.add(2);
  print(numbs);
  print(numbs.length);

  List<int> numbs2 = [1, 2, 3];
  numbs2.add(55);
  print(numbs2);

  List<int> numbs3 = List.filled(5, 10, growable: true); //Growable list
  numbs3.add(55);
  print(numbs3);
  print(numbs3.length);

  List<int> numbs4 = List.empty(growable: true);
  for (int i = 0; i < 5; i++) {
    numbs4.add(i);
  }
  print(numbs4);
}
