void main(List<String> args) {
  const Student samet = Student(1, "Samet");
  final Student samet2 = const Student(1, "Samet");
  var samet3 = const Student(1, "Samet");

  if (samet == samet2) {
    print("Same");
  } else {
    print("Not Same");
  }
}

class Student {
  final int id;
  final String name;

  const Student(this.id, this.name);
}
