/*
String: It is the data type used for text expressions.
It can be specified with double quotes or single quotes.
Interpolation : We can use another string expression as $expression inside a string expression.
So you don't need to use +.
If expression has more than one field, it is used as ${expression.method}.
Also, interpolation applies to other data types.
*/

main(List<String> args) {
  String name = "Samet";
  String surName = "Zengin";

  print(name + " " + surName);
  print("$name $surName"); // Same thing.
  print("Be my surname $surName Number of characters found:" +
      surName.length.toString());

  print("Number of characters: ${surName.length}");
  print("Number of my name's characters: Samet: ${name.length}");

  double width = 10;
  double length = 12;

  print(
      "The area of a rectange with a width of ${width.toInt()} and a length of ${length.toInt()} is ${(length * width).toInt()}");
  print(15.9.toInt());

  // Interpolation is very popular from Dart. Use it everywhere.
}
