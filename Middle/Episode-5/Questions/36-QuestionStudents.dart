import 'dart:math';
import 'Students.dart';

main(List<String> args) {
  List<Student> allStudents = List.filled(100, Student());
  assignStudentsRandomly(allStudents);
  for (Student currentStudent in allStudents) {
    print(currentStudent);
  }

  print(
      "Average of all students: ${calculateTheAverageOfStudents(allStudents).toString()}");
}

void assignStudentsRandomly(List<Student> list) {
  for (int i = 0; i < list.length; i++) {
    list[i] =
        Student(id: Random().nextInt(1000), gradeValue: Random().nextInt(100));
  }
}

double calculateTheAverageOfStudents(List<Student> list2) {
  int toplam = 0;
  for (Student currentStudent in list2) {
    toplam += currentStudent.gradeValue;
  }
  return toplam / list2.length;
}
