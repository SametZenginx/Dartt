/*
High Order Func: They are functions that take the function 
as a parameter or return a parameter.

both can be done at the same time.
*/

void main(List<String> args) {
  List<int> list1 = [1, 2, 3];
/*
  list1.forEach((element) {
    print("Element: $element");
  });
*/
  list1.forEach(callback);

  makingMyOwnforEach(list1, (int value, int index) {
    print("Value : $value and index $index");
  });
}

void makingMyOwnforEach(List<int> list, Function callback) {
  for (int i = 0; i < list.length; i++) {
    callback(list[i], i);
  }
}

void callback(int element) {
  print("Element: $element");
}
