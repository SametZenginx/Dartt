// Introduction to object-oriented programming

/*
  Class: Our own data types or abstract schemas are called. It has its own variables and methods.
It is the definition of an object or entity we want in computer languages.

  Object: It is called the instances produced from the abstract and draft classes created.
We can say that they are the references we use to reach the values of the class.

If the class is a remote control car, the object is the remote with which we control it.
*/

main(List<String> args) {
  Student sametZengin = Student();
  sametZengin.stuNo = 201001007;
  sametZengin.stuName = "Mustafa Samet";
  sametZengin.didGraduate = false;
  Student saitErgun = Student();
  saitErgun.stuName = "Sait Ergun";
  saitErgun.didGraduate = false;
  var kemalIsik = Student();
  print(saitErgun.stuName);
}

class Student {
// Instance variables
  int stuNo = 1;
  String? stuName = "";
  bool? didGraduate = true;

  void studyLesson() {
    print("Student study lesson.");
  }
}
