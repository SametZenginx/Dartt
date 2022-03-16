void main(List<String> args) {
  var myList = <String>[]; // Keep only strings.

  var mySet = {'age'}; // SET
  var myMap = {'age': 20}; // MAP
  var mySet1 = <String>{'Samet', "Hasan"};
  var myMap2 = <String, dynamic>{'Age': 20};

  var oddNumbs = [1, 3, 5, 7];
  var evenNumbs = [2, 4, 6, 8];
  var lastList = [...oddNumbs, ...evenNumbs]; //Spreads operator(...)
/*
  lastList.addAll(oddNumbs);
  lastList.addAll(evenNumbs);
*/
//Same and very basic. Spreads operator(...)
  print(lastList);

  var map1 = {"Name": "Samet"};
  var map2 = {"Age": 20};
  var lastMap = {...map1, ...map2}; //Spreads operator(...)
  print(lastMap);

  var set1 = {"Samet"};
  var set2 = {"Emre"};
  var set3 = {"Ayse"};
  var set4 = {"Emre"};

  var lastSet = {...set1, ...set2, ...set3, ...set4};

  print(lastSet);
}
