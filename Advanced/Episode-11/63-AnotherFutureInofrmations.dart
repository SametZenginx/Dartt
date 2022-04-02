main(List<String> args) async {
  print("Started the program.");

  Future.delayed(Duration(seconds: 1), () {
    print("1 second");
  });

  print("Finished the program.");

  Future<int> sums = Future(() {
    int sum = 0;
    for (int i = 0; i < 1000000000; i++) {
      sum += i;
    }
    //return sum;
    throw Exception("The sum is not calculated.");
  });

  //sums.then((int sum) => print(sum)).catchError((error) => (print(error)));
  try {
    int forResult = await sums;
    print("**** $forResult");
  } catch (e) {
    print(e);
  }

  var f2 = Future.value("Samet");
  var f3 = Future.error("Future is finished with Error");

  f3.catchError((error) => (print(error)));
}
