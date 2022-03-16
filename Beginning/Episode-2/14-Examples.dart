import 'dart:io';

void main() {
//1.Example:
  print("Enter the first note: ");
  int firstNote = int.parse(stdin.readLineSync()!);

  print("Enter the second note: ");
  int secondNote = int.parse(stdin.readLineSync()!);

  double result = firstNote * 0.4 + secondNote * 0.6;
  print("Your note is $result");

//2.Example:

  print("Enter the price: ");
  double price = double.parse(stdin.readLineSync()!);
  double lastPrice = price * 1.18;
  print("Last price is $lastPrice");
}
