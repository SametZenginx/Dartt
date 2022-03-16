import 'dart:io';

void main(List<String> args) {
  print("Enter the name: ");
  String? name = stdin.readLineSync();
  print("Your name is $name");

  print("Enter the age: ");
  int? age = int.parse(stdin.readLineSync()!); // Not null.!
  age += 5;
  print("Your age is $age");
  
}
