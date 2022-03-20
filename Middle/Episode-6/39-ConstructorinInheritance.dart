/*
Constructor methods in inheritance

super(constructor of the upper class) goes to the upper class.

*/

main(List<String> args) {
  Soldier samet = Soldier("Samet", 20);
  Corporal hasan = Corporal("Hasan", 19);
  hasan.changeHometown("Bursa");
}

class Soldier {
  String name = "Varsayilan";
  int age = 0;
  String hometown = "Ankara";
  Soldier(this.name, this.age) {
    print("Constructor of soldier class worked.");
  }

  void hi() {
    print("Hello I'm $name and my age is $age");
  }
}

class Corporal extends Soldier {
  Corporal(String name, int age) : super(name, age) {
    //Constructor in Inheritance / 
    print("Constructor of corporal class worked.");
  }

  void changeHometown(String newHometown) {
    super.hometown = newHometown;
  }

  @override
  void hi() {
    print("Hello at Corporal class.");
  }
}
