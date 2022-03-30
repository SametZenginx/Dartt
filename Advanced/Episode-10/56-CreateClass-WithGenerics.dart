main(List<String> args) {
  MyStack myStack = MyStack();
  myStack.push(5);
  myStack.push("Samet");
  myStack.push(true);
  print(myStack.pop());
  print(myStack.pop());
  print(myStack.pop());

  IntMyStack intMyStack = IntMyStack();
  intMyStack.push(5);
  print(intMyStack.pop());

  StringMyStack stringMyStack = StringMyStack();
  stringMyStack.push("Sa");

  // Generics very easy.

  GenericStack<String> genericStack = GenericStack();
  genericStack.push("Emre");
  // T = String !!

  GenericStack<int> genericStack1 = GenericStack();
  //T = integer !!
}

class MyStack {
  List _myList = [];

  push(newElement) {
    _myList.add(newElement);
  }

  pop() {
    return _myList.removeLast();
  }
}

class IntMyStack {
  List<int> _myList = [];

  void push(int newElement) {
    _myList.add(newElement);
  }

  int pop() {
    return _myList.removeLast();
  }
}

class StringMyStack {
  List<String> _myList = [];

  void push(String newElement) {
    _myList.add(newElement);
  }

  String pop() {
    return _myList.removeLast();
  }
}

class GenericStack<T> {
  List<T> _myList = <T>[];

  void push(T newElement) {
    _myList.add(newElement);
  }

  T pop() {
    return _myList.removeLast();
  }
}
