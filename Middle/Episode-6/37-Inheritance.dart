/*
Benefits of Inheritance
Snippets of previously written code can be used in other classes 
without being written over and over again.
Classes with control statements such as if, else, 
switch are examples of bad design. 
Inheritance should be preferred instead.

Method overriding: It is the replacement of the variables or methods in the superclass by the subclass.
*/

main(List<String> args) {
  User user1 = User();
  user1.loginIn();
  NormalUser normal1 = NormalUser();
  normal1.invite();
  normal1.loginIn();

  CanOnlyReadNormalUser onlyReadUser = CanOnlyReadNormalUser();
  onlyReadUser.sayName();
}

class User {
  String email = "";
  String password = "";

  void loginIn() {
    print("Parent user logged in.");
  }
}

class NormalUser extends User {
  // Can be used this way.
  void invite() {
    print("Normal user invited his/her friends.");
  }

  @override // Overriding.
  void loginIn() {
    print("Normal user logged in.");
  }
}

class CanOnlyReadNormalUser extends NormalUser {
  // Can be used this way. very different from NormalUser.
  void sayName() {
    print("I can only reading.");
  }
}

class Admin extends User {
  void showTotalNumbersOfUsers() {
    print("Total numbers of users is 20");
  }
}
