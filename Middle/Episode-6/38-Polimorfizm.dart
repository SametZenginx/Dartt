main(List<String> args) {
  User user1 = User();
  var user2 = NormalUser();
  CanOnlyReadNormalUser user3 = CanOnlyReadNormalUser();
  Admin user4 = Admin();

  User user5 = Admin(); // Upcasting... admin is a user.
  User user6 = CanOnlyReadNormalUser();
/*

In summary, in inherited classes, the parent class looks like this
can gather other al classes under one roof.
Like in this list. good learn

*/
  List<User> allUsers = [];
  allUsers.add(user1);
  allUsers.add(user2);
  allUsers.add(user3);

  test(user1);
  test(user2);
  test(user3);
  test(user4);
}

void test(User users) {
  users.loginIn(); // Polimorfizm.
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

  @override
  void loginIn() {
    print("Admin logged in.");
  }
}
