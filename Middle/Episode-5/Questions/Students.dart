class Student {
  int id;
  int gradeValue;

  Student({this.id = 1, this.gradeValue = 1});
  @override
  String toString() {
    return "ID : $id   Grade = $gradeValue";
  }
}
