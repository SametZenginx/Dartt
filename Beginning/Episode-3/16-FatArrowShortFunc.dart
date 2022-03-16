void main(List<String> args) {
  sumtheNumbers();
  int resultSubtract = subtracttheNumbers(5, 10);
  print("Result is $resultSubtract");
  print("Result is ${multiplyNumbers(5, 8)}");
  print("The big one is: " + returntheBigOne(5, 8).toString());
  print("The small one is: " + returntheBigOne(5, 4).toString());
}

//This is ShortFunction.
int subtracttheNumbers(int numb1, int numb2) => (numb1 - numb2);

/*
int subtracttheNumbers(int numb1, int numb2) {
  return numb1 - numb2;
}
*/

int multiplyNumbers(int numb1, int numb2) => (numb1 * numb2);

//This is ShortFunction.
int returntheBigOne(int n1, int n2) => n1 < n2 ? n1 : n2;

/*
int returntheBigOne(int numb1, int numb2) {
  if (numb1 > numb2) {
    return numb1;
  } else {
    return numb2;
  }
}
*/
int returntheSmallOne(int n1, int n2) => n1 < n2 ? n1 : n2;

void sumtheNumbers() {
  int numb1 = 5;
  int numb2 = 10;
  int sum = numb1 + numb2;
  print("Sum is $sum");
}
