//1. FUNC
int Factorial(int x) {
  int result = 1;
  for (int i = 1; i <= x; i++) {
    result *= i;
  }
  return result;
}

//2. FUNC
void perfectNumbs() {
  List<int> lastList = [];
  int result = 0;
  for (int x = 1; x < 1001; x++) {
    for (int i = 1; i < x; i++) {
      if (x % i == 0) {
        result += i;
      }
    }
    if (result == x) {
      lastList.add(x);
    }
    result = 0;
  }

  print(lastList);
}

//3. FUNC
bool primeNumb(int x) => x % 2 == 0 ? false : true;

//4. FUNC
void calculator() {
  for (int i = 1; i < 11; i++) {
    print("**********************");
    for (int x = 1; x < 11; x++) {
      print("$i x $x = ${i * x}");
    }
  }
  print("**********************");
}
