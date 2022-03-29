main(List<String> args) {
  Map<String, dynamic> map = Map();
  var map2 = <String, dynamic>{};

  map["Id"] = 5;
  map["Name"] = "Samet";
  map["Color"] = "Blue";
  map["Surname"] = "Zengin";

  var newMap = Map.from({'value': 'new'});
  var mapFromEntries = Map.fromEntries(map.entries);
  print(mapFromEntries);

  var list = [1, 2, 3, 4];
  var mapFromIterable = Map<String, String>.fromIterable(list,
      key: (item) {
        return "$item";
      },
      value: (item) => "${item * 2}");
  print(mapFromIterable);

  map.update("Id_new", (value) => value * 3, ifAbsent: () => 100);
  print(map);

  map.putIfAbsent("Surname", () => "Zengin");
  //if not, create and put. If there is, don't do anything.
  print(map);
}
