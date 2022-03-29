main(List<String> args) {
  Person samet = Person(3, "Samet");
  Student hasan = Student(1, "Hasan", 10);
  Person ayse = Student(8, "Ayse", 8);
  var yunus = Person(6, "Yunus");
  var ali = Student(7, "Ali", 4);

  List<Person> allPeople = [samet, hasan, ayse, yunus, ali];

  var list1 = List<Student>.filled(5, Student(0, "", 0));

  var listFrom =
      List<Student>.from(allPeople.whereType<Student>()); // All elements
  var listOf = List<Student>.of(allPeople.whereType<
      Student>()); // Everyone on the list must be a person. (from elements)
  // whereType<Student>() ==> Returns a new lazy Iterable with all elements that have type Student.

  var listGenerate =
      List<Student>.generate(5, (index) => Student(index, "$index", index * 2));

  print(listFrom);
  print(listGenerate);

  var dontChangeList = List.unmodifiable([0, 1, 2]);
  //DONT CHANGE LİST => NO ADD LİST-REMOVE LİST OR MAYBE DİFFERENT METHOD DON'T WORK!

  
}

class Person {
  int id = 0;
  String name = "";

  Person(this.id, this.name);

  @override
  String toString() {
    return "id: $id and name: $name";
  }
}

class Student extends Person {
  int numberOfCoursesTaken = 0;
  Student(id, name, numberOfCoursesTaken) : super(id, name);

  @override
  String toString() {
    return "id: $id and name: $name and number of courses taken: $numberOfCoursesTaken";
  }
}
