/*
 FOUNDING METHODS - CONSTRUCTORS
These are the structures that are triggered when we produce an object from a class. 
Using these structures, we can create our objects by sending data, and make the necessary assignments and 
settings before using the objects.
 
We can create different types of constructors.
 1-Default : It is the method that works when we call () next to the class name and is the same as the class name.
When we say student emre=new student(), the default constructor actually works.
Default constructor is an empty method defined as Student(){} inside the class, even if we do not specify it manually.
We can use it for various occasions if we want. This method is the first to run in every object creation.
Constructor methods do not have a return type.

 2- Parameterized Constructor Method : In fact, it is called the default constructor that has a parameter.
Student emre=new Student("emre");
Since there is no method overloading in Dart, there should only be either a default constructor or a parameterized constructor.
 
 3- Named: Within the class
  ClassName.methodName(){
   Here comes the codes.
  }
You can create as many named constructors as you want.
 */

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

  void showInformations() {
    print(
        "Car model year is $modelYear brand is $brand automatic is $isitAutomatic");
  }

  void calculateAge() {
    print("Car's age is ${2022 - modelYear!}");
  }
}
