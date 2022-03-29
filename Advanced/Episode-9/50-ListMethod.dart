void main(List<String> args) {
  Person samet = Person(3, "Samet");
  Student hasan = Student(1, "Hasan", 10);
  Person ayse = Student(8, "Ayse", 8);
  var yunus = Person(6, "Yunus");
  var ali = Student(7, "Ali", 4);

  List<Person> allPeople = [samet, hasan, ayse, yunus, ali, samet, ali];

  allPeople.sort((ogr1, ogr2) {
    if (ogr1.id < ogr2.id) {
      return 1;
    } else if (ogr1.id > ogr2.id) {
      return -1;
    } else {
      return 0;
    }
  });

  print(allPeople);

  var mapIterableName = allPeople.map((Person e) => "${e.name}").toList();
  var mapIterableId = allPeople.map((e) => "${e.id}").toSet();
  print(mapIterableName);
  print(mapIterableId);

  allPeople.add(yunus);
  allPeople.addAll([ayse, ali]);

  bool result = allPeople.any((Person element) => element.id > 10);
  print(result);

  Map<int, Person> newMap = allPeople.asMap();
  print(newMap[0]!.id);

  print(allPeople.contains(samet)); //Is samet on the list?

  bool resultEvery = allPeople.every((element) => element.name.length > 0);
  print(
      resultEvery); //every = true,false (do they all have name length greater than 0?)

  var found = allPeople.firstWhere((element) => element.id == 1);
  print(found); //firstWhere :
}

class Person {
  int id = 0;
  String name = "";

  Person(this.id, this.name);

  @override
  String toString() {
    return "id: $id and name: $name\n";
  }
}

class Student extends Person {
  int numberOfCoursesTaken = 0;
  Student(id, name, numberOfCoursesTaken) : super(id, name);

  @override
  String toString() {
    return "id: $id and name: $name and number of courses taken: $numberOfCoursesTaken\n";
  }
}
