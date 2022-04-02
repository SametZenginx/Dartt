/*
When you put it in '!', you tell dart: 
I know this variable can be null but 
I promise there is no null value, so
you can assign it to a variable that doesn't accept a null value.

If dart is in the same scope, it can tell if that variable is null even if it is nullable. 
Can't be sure if it's in a different scope.
*/
int? maybeNullbutNot = 1;
main(List<String> args) {
  List<int?> listButkeepNullValue = [2, 3, null];

  int a = maybeNullbutNot!;
  int b = listButkeepNullValue.first!;
  int c = maybeReturnNullButNot()!.abs();
}

int? maybeReturnNullButNot() {
  return 5;
}
