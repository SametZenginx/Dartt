main(List<String> args) {
  Personal samet = Personal("Samet", 20);
  samet.introduceYourself();

  Worker hasan = Worker("Hasan", 30, 3000);
  hasan.introduceYourself();
}

class Personal {
  String name;
  int age;
  Personal(this.name, this.age);

  void introduceYourself() {
    print("I'm $name and my age is $age");
  }
}

class Worker extends Personal {
  int salary;
  Worker(String workerName, int workerAge, this.salary)
      : super(workerName, workerAge) {}

  @override
  void introduceYourself() {
    super.introduceYourself();
    print("And my salary is $salary");
  }
}
