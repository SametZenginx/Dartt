/*
The concepts of nullable and non-nullable also apply when specifying generic types.
What's important here? where we put it.
 
We can specify List<String>? if we say List can be null, List<String?> 
if we say that some elements of the list can be null.
*/

main(List<String> args) {
  List<String> strList = ["Samet", "Ates", "Kazanova"];
  List<String>?  strListmaybeNullList;
  List<String?> strListmaybeNullKeepList = ["Samet", null, "Hasan"];

  print("Str list = $strList");
  print("Str list maybe null = $strListmaybeNullList");
  print("Str list maybe null keep list = $strListmaybeNullKeepList");

}
