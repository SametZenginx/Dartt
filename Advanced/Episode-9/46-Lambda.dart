/*
lambda expression : lambda is function without name. 
every function is object in Dart.
*/

void main(List<String> args) {
  Function f1 = (int a, int b) {
    int sum = a + b;
    print(sum);
  };

  f1(5, 7);
  String name = "Samet";

  var f2 = (int s) => s * 2;

  var f3 = (int s2) {
    return s2 * 2;
  };

  var num1 = f2(5);
  print(num1);
  print(f3(5));
}

//Normal function
void sumtheNumbers(int a, int b) {
  int sum = a + b;
  print(sum);
}
