/*
The list is divided into two
1-Fixed length
2-Growing lists

Structures known as arrays in other languages are used as a fixed-length list in dart.
List<int> numbers = List.filled(10, 0);
Fixed-length list or array containing /10 elements.
Index numbers start from 0, so to access the first element of the list, 
index 0 is checked saying numbers[0]...
*/

void main(List<String> args) {
  int numb = 4;
  List<int> numbs = List.filled(5, 2, growable: false);
  print(numbs);

  numbs[0] = 5;
  numbs[1] = 2;
  numbs[2] = 9;
  print(numbs);
  print(numbs[3]);
  print(numbs.length);
//String list
  List<String> names = List.filled(2, "Unknown");
  names[0] = "Mustafa Samet";
  names[1] = 19.toString();
  print(names);

//List<dynamic> mix = List<dynamic>.filled(4,0);
  List mix = List.filled(4, 0);
  mix[0] = "Mustafa Samet";
  mix[1] = 5;
  mix[2] = false;
  print(mix);

//navigating list items
  for (int i = 0; i < numbs.length; i++) {
    numbs[i] += 5;
    print(numbs[i]);
  }
  print("***************");
  for (int thecurrentElement in numbs) {
    print(thecurrentElement);
  }
}
