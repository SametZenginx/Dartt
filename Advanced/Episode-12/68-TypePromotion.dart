/*
Dart language treats nullable types that are not possible to be null but specified
as if they will be nullable, as non-nullable 
This is called type promotion.

The Dart type system constantly analyzes where the variable is defined and where it is read. 
A variable may be created to be null, but dart can detect it 
if a value other than null is set just before it is read.
*/

main(List<String> args) {
  String? message;

  if(DateTime.now().hour<12){
    message = "Good morning";
  }else{
    message = "Good afternoon";
  }

  print(message);
  print(message.length);

  Object txt = "This is string";
  if(txt is String){
    print(txt.length);
  }
}