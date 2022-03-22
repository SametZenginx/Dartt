import 'dart:math';

void main(List<String> args) {
  var numb1 = 5;
  var numb2 = 7;
  var bigOne = max(numb1, numb2);

  print("The big one is $bigOne");

  int littleNumb = numb1 < numb2 ? numb1 : numb2;
  print("The little one is $littleNumb");

  int numb = 12;
  int digit = numb ~/ 10;
  switch (digit) {
    case 1:
      print("Numb is greater than 9 and smaller than 20");
      break;
    case 2:
      print("Numb is greater than 19 and smaller than 30");
      break;
    case 3:
      print("Numb is greater than 29 and smaller than 40");
      break;
    default:
      print("Numb is not in range");
  }

  int numb5 = 5;
  print(numb5++);
  print(++numb5);

//with for
  for (int i = 0; i < numb5; i++) {
    print(i);
  }
//with while
  int i = 0;
  while (i < numb5) {
    print(i);
    i++;
  }
//with do-while
  do {
    print(i);
    i++;
  } while (i < numb5);

  
}
