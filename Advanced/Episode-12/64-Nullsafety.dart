/*
By default, Dart does not allow any variable to be set to null. 
This is called dart non-nullable type. If you do not define a variable and assign the appropriate data, 
it will give you a warning. In this warning, you will be asked to assign the initial value to the variable. 
Thus, no non-nullable variable will display a null value while the program is running. (null sound)

If you don't want this, ? to the end of the data type? you put 
Thus, a null value can be stored in the variable. 
These are actually a new data type. ? By putting it, you will create a Nullable type.
*/

main(List<String> args) {
  int a; //non-nullable.
  int? b; //be nullable.
  b = null;
  print("b = $b");
}
