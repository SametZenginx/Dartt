main(List<String> args) {
  try {
    Student msz = Student(-5);
    print(msz.age);
  } on AgeException catch (e) {
    print(e.message);
  } finally {
    print("The program is over.");
    try {
    Student msz = Student(-5);
    print(msz.age);
    } on AgeException catch (e) {
    print(e.message);
    } finally {
    print("The program is over.");
    }
  }
}

class AgeException implements Exception {
  String message = "";

  AgeException({this.message = "AgeException"});

  @override
  String toString() {
    return "The toString method of the error worked.";
  }
}

class Student {
  int age = 0;

  Student(int age) {
    if (age < 0) {
      throw AgeException(message: "AgeException - The age is not negative.");
    } else {
      this.age = age;
    }
  }
}
