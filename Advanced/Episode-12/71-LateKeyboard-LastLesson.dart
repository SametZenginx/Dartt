/*
Sometimes variables or properties should be non-nullable, 
but initialization will not happen immediately. 
In these cases, the late keyword is used.

When you type late in front of a variable, you are telling Dart:
1- assign a value to this variable
2- you will assign the value later
3- Trust me dart, well I will initialize this variable before you read it

If you try to read the variable without assigning a value, you will get an error.
*/
class Food {
  late final String? definition;
  //late = (maybe null but i put the value. trust me!)
  late final int price;

  Food(this.price);

  void setDefinition(String definition) {
    this.definition = definition;
  }
}

main(List<String> args) {
  final myFood = Food(5);
  myFood.setDefinition("Hamsi");
  print(myFood.definition);
  /*
  if you type this 'print(myFood.definition)' first, 
  it will throw LateInitializationError.
  */
}
