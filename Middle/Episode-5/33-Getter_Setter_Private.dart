/*
Private variables and functions: Sometimes we may want to disable variables and methods in a class. 
In these cases, we hide them with the _ sign.

getter methods: special functions used to read class variables.
The purpose of these methods is to ensure that variables that are private, that is, 
closed to the outside world, are read when necessary.

setter methods: used to assign data to class variables. 
The purpose of these methods is to assign data to variables that are private, that is, 
closed to the access of the outside world
and are also used to perform the necessary controls and operations when assigning data.
*/
import '34-33.LessonClasses.dart';

main(List<String> args) {
  Customer c1 = Customer(952);
  c1.printInformations();

  c1.customerNoAssign = 52; // SETTER
  print(c1.customerNoSay); // GETTER

  DatabaseOperations db = DatabaseOperations();
  DatabaseOperations db2 =
      DatabaseOperations.loginWithNameandPassword("Eyup", "145612");
  bool result = db.connect();
  if (result) {
    print("I'm connected.");
  } else {
    print("I couldn't connected.");
  }
}
