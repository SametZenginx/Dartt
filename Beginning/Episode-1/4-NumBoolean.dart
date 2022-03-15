/* 
Num : can store an integer or a decimal expression.
It can also store hexadecimal values. 0xAABBCC
Double = is the data type used for decimal expressions.
Integer or decimal expression can also be stored with the var keyword.
If an int value is set as var, then a double value cannot be assigned
takes Boolean = true/false values
*/
void main(List<String> args) {
  int age = 34;
  print(age);
  age = 44;
  print(age);

  num year = 1988;
  print(year);

  double year1 = 1988; // Very different.
  print(year1);

  int weight = 72.3.toInt();
  print(weight);

  var numb = 56; // Integer.
  // numb = "asd"; not possible.
  // Null safety int no;
  print(numb);
  int no;
  no = 35;
  print(no); // It's possible.

  double? s1; // Can be null. (integer,double) not (var)
  s1 = 9;
  print(s1);

  int hexadecimalNumb = 0xAABBCC;
  print(hexadecimalNumb);
}
