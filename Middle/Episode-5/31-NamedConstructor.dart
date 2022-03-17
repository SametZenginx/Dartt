main(List<String> args) {
  Car honda = Car(2020, "Honda", true);
/*
  honda.brand = "Honda";
  honda.modelYear = 2020;
  honda.isitAutomatic = true;
*/
  honda.showInformations();
  honda.modelYear = 2021;
  honda.showInformations();

  var bmw = Car(2019, "BMW", false);
  bmw.showInformations();

  var renault = Car(2019, "BMW", true);
  renault.showInformations();
  renault.calculateAge();

  var citroen = Car.noBrandConstructorMethod(false, 2015);
  Car suzuki = Car.noYearConstructorMethod(true, "Suzuki");

  suzuki.showInformations();
  suzuki.calculateAge();
}

class Car {
  int? modelYear;
  String? brand;
  bool? isitAutomatic;
/*
  Car() { (there is always this invisibly...)
    print("Constructor method triggered.");
  }
*/
  Car(this.modelYear, this.brand, this.isitAutomatic) {
    print("Constructor method triggered.");
    /*   // the above ... does this.
    this.modelYear = modelYear;
    this.brand = brand;   
    this.isitAutomatic = isitAutomatic;
    */
  }

  Car.noBrandConstructorMethod(this.isitAutomatic, this.modelYear);
  Car.noYearConstructorMethod(bool isitAutomatic, String brand) {
    this.isitAutomatic = isitAutomatic;
    this.brand = brand;
  }
  void showInformations() {
    print(
        "Car model year is $modelYear brand is $brand automatic is $isitAutomatic");
  }

  void calculateAge() {
    if (modelYear != null) {
      print("Car's age is ${2022 - modelYear!}");
    } else {
      print("No have model year.");
    }
  }
}
