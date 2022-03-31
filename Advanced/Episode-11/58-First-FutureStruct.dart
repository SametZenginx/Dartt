import 'dart:io';

void main(List<String> args) {
  print("Mother sends the her child to buy bread");
  longProcess();

  print("Cheese and olive are prepared");

  print("Time to breakfast!!");
}

void longProcess() {
  print("The child leave the home for buy bread");
  Future.delayed(Duration(seconds: 5), () {
    print("The child comes the home with bread");
  });
}
