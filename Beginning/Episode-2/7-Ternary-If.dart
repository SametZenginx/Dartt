/*
if? expression1 : expression2
*/
void main(List<String> args) {
  int numb1 = 4;
  var numb2 = 6;
  int littleNumb;

/* 
  if (numb1 < numb2) {
    littleNumb = numb1;
  } else {
    littleNumb = numb2;
  } */

// numb1 < numb2 ? littleNumb = numb1 : littleNumb = numb2;
  littleNumb = numb1 < numb2 ? numb1 : numb2;
  print("Little numb: $littleNumb");
  String? name = null;
  String? surName = "Zengin";
  String? mesaj;

  mesaj = name ?? surName;
// ?? first writing name, if name is null. writing surname.
  print(mesaj);
}
