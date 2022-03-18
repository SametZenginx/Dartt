import 'dart:math';

class DatabaseOperations {
  String _userName = "Samet"; // Privated.
  String _password = "123456";

  bool connect() {
    if (_isthereInternet()) {
      if (_userName == "Samet" && _password == "123456") {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  bool _isthereInternet() {
    if (Random().nextBool()) {
      return true;
    } else {
      return false;
    }
  }

  DatabaseOperations();
  DatabaseOperations.loginWithNameandPassword(
      String userName, String password) {}
}

class Customer {
  int? _customerNo;
/*
  Customer(int customerNo) {
    this.customerNo = customerNo;
  }
*/

  Customer(int customerNo) {
    _customerNoCheck(customerNo);
  }

  String get customerNoSay => "Customer No: $_customerNo";
  //GETTER
  void set customerNoAssign(int no) {
    //SETTER
    if (no > 300) {
      _customerNo = no;
    } else {
      return;
    }
  }

  void _customerNoCheck(int no) {
    if (no > 300) {
      _customerNo = no;
    } else {
      return;
    }
  }

  void printInformations() {
    print("Customer created. Customer no: $_customerNo");
  }
}
