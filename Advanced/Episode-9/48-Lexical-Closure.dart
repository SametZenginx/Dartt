/*
  Closure is a special function. With closure 
  we can change the values of variables in a parent scope.
*/
//lexical variable scope
main(List<String> args) {
  var mainVariable = 1;
  void a() {
    var aVariable = 2;

    void b() {
      var bVariable = 3;
      print(aVariable);
      print(mainVariable);
    }
  }

/*
  var d = sum();
  Sum returns a function. and we assigned this function to d.
  var result = d(5);
  print(result);
*/

  var returnFunc = sum(3);
  var result = returnFunc(4);

  print(result);
}

Function sum(int element) {
  return (int value) => element * value; //lambda func.
}
