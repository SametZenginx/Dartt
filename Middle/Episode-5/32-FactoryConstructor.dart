main(List<String> args) {
  Student samet = Student(5, "Samet");
  Student hasan = Student.notId("Hasan");
  Student ayse = Student.factoryConstructor(-9, "Ayse");

  print(ayse.id);
  print(ayse.name);
}

class Student {
  int id = 0;
  String name = "";

  Student(this.id, this.name);
  Student.notId(this.name);
//FACTORY
  factory Student.factoryConstructor(int id, String name) {
    if (id < 0 || name.length == 0) {
      return Student(5, name);
    } else {
      return Student(id, name);
    }
  }
}
