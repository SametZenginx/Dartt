/*
 Dart is an optionally typed language. 
So specifying data types is optional.
 Constantly used collection structures (list, map, set) are heterogeneous by default. 
So you can store different types of data in the same collection structure. 
But should you?

 Thanks to generic types, we tell what type of data will be in a structure.
Thus, these structures become type-safe, erroneous data entry is detected 
at compile time and we are told that we are wrong. 
Thus, errors that may occur in the runtime are prevented.

 Generic types are specified in <>. List<String> means that this list will contain only 
String data. If data other than String is added to this list, 
we will get an error before we run the program and we need to fix it. 
Thus, we can write code more confidently.

 Generics already exist in most builds found in darts. 
Like List, map, set, Future, Stream... 
You can also apply generics in the classes and methods you create.
Thus, you can both write more secure code and collect code structures 
that achieve similar purposes in a single structure.
*/

main(List<String> args) {
  List<String> list = [];
  list.add("Samet");
  list.add("Zengin");

  write(list);

  // List<E> ==> Element
  // Map<K> ==> Key
  // Map<K, V> ==> Key, Value
  // R ==> for method's return type

  // Student<T extends Human> ==> Students but must be human.
}

write(List list) {
  print(list[1].length);
}
