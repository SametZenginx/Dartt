/**
The Dart language treats nullable variables as non-nullable 
if null is checked within the same scope.

A different method may throw an error. 
If the value is null, if we snarl an error, the return statement will not work 
and our function will not return a null value.
*/
int findTheCharacterNumb(String? text) {
  if (text == null) {
    throw Exception("The text is null");
    //return 0;
  }
  return text.length;
}

void main(List<String> args) {
  try {
    print(findTheCharacterNumb(null));
  } catch (e) {
    print(e);
  }
}
