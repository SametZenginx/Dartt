/*
IMMUTABLE = CONSTANT!

final : after the value is assigned, allocating memory is only if accessed. 
The values of the final data can be changed, the data types cannot be changed.

const : this is actually final, but at the time of compilation 
it is assigned a value and allocated in memory, 
even if it is never used... 
Neither the data type nor the value in it can be changed later.

The most important difference is 
that instance variables are defined only as final, not const.
*/

void main(List<String> args) {
  var str = "Samet";
  //str, selects the memory location named "Samet"
  str = "Zengin";
  /*
  When we do this, a new "Zengin" is created in memory. and select it. 
  And if "Samet" is not reached, it will be garbage data.
  */

  final String str2 = "Samet";
  //IMMUTABLE, The value of str2 will not change anymore.

  const String str3 = "Samet";

  const num1 = 5;
  final num2 = 10;
/*
  final date = DateTime.now();
  const date2 = DateTime.now(); //Misuse.
*/

  final list1 = [1, 2, 3];
  final list2 = [1, 2, 3];

  if (list1 == list2) {
    print("Same");
  } else {
    //This works because the places in memory are different.
    print("Not same");
  }
  list1.add(4);
  // We cannot change the memory address the list holds.
  // But we can add and remove things from the list.

  //canonicalized
  const list3 = [1, 2];
  const list4 = [1, 2];

  if (list3 == list4) {
    print("Same");
  } else {
    print("Not Same");
  }
  // list3.add(4); we cannot add the list3


  /*
  When two lists are the same, if we define them with final 
  they mark separate memories. It marks the same memory as const. 
  That's why it says "Same".
  */

  /*
  In summary, if we define it with a final in the lists, 
  we mark it. If we define it with const, 
  we both mark it and cannot change it.
  */

  // And final --> Runtime now , const --> Compilier now

}
