/* DATA TYPES AND THE CONCEPT OF VARIABLES

VARIABLE: The data we process in the programming language is
These are the definitions we have made to keep in memory.

There are different types of data based on the type of data held. Dart includes the following types as built-in.
- Numbers
   - int
   - Double Float
- String
- Boolean true/false

All data types are Objects.

'var' keyword means variable
We use it if we do not want to specify the data type.
Automatically specifies the type based on the assigned expression.
*/

void main(List<String> args) {
  print("Mustafa Samet");
  int age = 20;
  double averageClass = 48.6;
  num year = 1988.5; // includes of int and double
  // num year = 1988;
  print(age);
  print(averageClass);
  print(year);

  String name = "Mustafa Samet";
  print(name + " Zengin");
  print(name + "'s age");

  bool isitMale = true;
  bool isitFemale = false;
  print(isitMale);
  print(isitFemale);

  var x = "Ege "; // This is string.
  var y = 50; // This is integer.

  print(x);
  print(y);
}
