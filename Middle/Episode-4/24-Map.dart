//VERY IMPORTANT STRUCTURE...

/*
The map structure is a collection element that stores elements in an unordered way, like a set.
The feature that distinguishes this structure from lists and sets 
is that it stores the elements as key-values.
Any data type can be used, but the important thing here is that the key values must be unique.

We can liken the map structure to a dictionary. Just like a dictionary, it contains different elements.
It is not fixed length, it has dynamic length.

*/

//KEY-VALUE , DYNAMİC LENGTH , UNIQUE

main(List<String> args) {
  Map<String, int> areaCodes = {
    "ankara": 312,
    "bursa": 224,
    "istanbul": 212,
  };

  print(areaCodes["bursa"]); // printed 224

  Map<String, dynamic> samet = {
    "surname": "Zengin",
    "age": 20,
    "ishesingle": true
  };

  print(samet["age"]);

  List numbs = [0, 1, 2];

  Map<String, dynamic> example = Map();
//OR
  Map<String, dynamic> example2 = {};

  example2["Age"] = 20;
//Just key.
  for (String momentKey in samet.keys) {
    print(momentKey + "->" + samet[momentKey].toString());
  }
  print("***************");

//Just value.
  for (dynamic value in samet.values) {
    print(value);
  }

//Both of them
  for (var element in samet.entries) {
    print("Key: ${element.key} Value: ${element.value}");
  }

  if (samet.containsKey("sehir")) {
    print("Sehir: ${samet["sehir"]}");
  }
  if (samet.containsKey("age")) {
    print("age: ${samet["age"]}");
  }
}
