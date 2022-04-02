main(List<String> args) {
  OracleDB db1 = OracleDB(); // DON'T DO THAT.
  Database db2 = OracleDB(); // DO THAT.

  db2.userDelete();
  db2.userSave();
  userUpdate(db2);

// Let's say you are going to change the database.
// You just need to change this.
// Database db3 = OracleDB();
// From Oracle to Firebase
// Database db3 = FirebaseDB(); That's enough
}

void userUpdate(Database db) {
  db.userUpdate();
}

abstract class Database {
  void userSave();
  void userUpdate();
  void userDelete();
  void updateProduct() {
    print("The product has been updated.");
  }
}

class OracleDB extends Database {
  @override
  void userDelete() {
    print("User deleted from OracleDB");
  }

  @override
  void userSave() {
    print("User saved from OracleDB");
  }

  @override
  void userUpdate() {
    print("User updated from OracleDB");
  }
}

class FirebaseDB extends Database {
  @override
  void userDelete() {
    print("User deleted from Firebase");
  }

  @override
  void userSave() {
    print("User saved from Firebase");
  }

  @override
  void userUpdate() {
    print("User updated from Firebase");
  }
}
