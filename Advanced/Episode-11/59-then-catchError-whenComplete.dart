import 'dart:io';

void main(List<String> args) {
  print("Mother sends the her child to buy bread");

  longProcess()
      .then((value) => print(value))
      .catchError((error) => print(error))
      .whenComplete(() => print("Bread buying op. finished."));

  print("Cheese and olive are prepared");

  print("Time to breakfast!!");
}

Future<String> longProcess() {
  return Future<String>.delayed(Duration(seconds: 5), () {
    return "The child comes the home with bread";
  });
}
