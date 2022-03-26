/*
  There is no concept of interface in Dart, 
but we can use classes as if they were interfaces with the implements keyword.
  Thanks to interfaces, we can gather classes that
have common features but are not genetically related under one roof.
The methods of the classes used as interfaces 
must be made by the classes that implement these classes.
Multiple inheritance, which is not in dart language
can be provided thanks to interfaces. 
A class can implement more than one class by saying implements.
*/

/*
If you say ''implements'', define it again in it. 
If you're saying ''extends'' you don't need to define it in it 
but you can't add it with more than one (,).
*/

main(List<String> args) {}

abstract class Animal {
  void nonAbstractmethod() {
    print("method definition");
  }
}

abstract class AbleToFly {
  void fly();
  void test() {
    print("test");
  }
}

abstract class AbleToBark {
  void bark();
}

abstract class AbleToRun {
  void run();
}

class Bird extends Animal implements AbleToFly {
  // from a single class.
  @override
  void fly() {
    // TODO: implement fly
  }

  @override
  void test() {
    // TODO: implement test
  }
}

class Dog extends Animal implements AbleToBark, AbleToRun {
  //inherit from as many classes as you want
  @override
  void bark() {
    // TODO: implement bark
  }

  @override
  void run() {
    // TODO: implement run
  }
}

class Human implements AbleToRun {
  @override
  void run() {
    // TODO: implement run
  }
}
