/*
We may want to access some variables and methods in our classes without creating objects. 
Here we come across the concept of static.

Using Static, we can create class variables and methods, not objects.
When accessing methods and variables defined in a class, we must create an object. 
But if we define them as static
we can now access and use these values without creating objects. 
Now they are methods and variables of the class, not objects.

also static variables don't get values until they are used, no memory is allocated
The this keyword is not used inside static methods.

Object-specific fields cannot be accessed from within static methods, 
while static values can be accessed from within an object-specific method.
*/
main(List<String> args) {
  Math m1 = Math(3, 2);
  m1.sum();
  m1.subtraction();

  print(Math.PI);

  Math m2 = Math(30, 10);
  m2.sum();
  m2.subtraction();
  Math.sayClassName();

  print("Total Transaction Count = ${Math.totalTransactionCount}");
}

class Math {
  //instance variable
  int firstNum = 0;
  int secondNum = 0;

  //class variable
  static int totalTransactionCount = 0;
  static double PI = 3.14;
  static void sayClassName() {
    //! sum();
    //*we cannot call instance functions here.

    print("I'm Math Class");
  }

  Math(this.firstNum, this.secondNum);

  void sum() {
    //* sayClassName();
    //Here we can call statics and use them.
    totalTransactionCount++;
    print("Sum is ${firstNum + secondNum}");
  }

  void subtraction() {
    totalTransactionCount++;
    print("Subtraction is ${firstNum - secondNum}");
  }
}
