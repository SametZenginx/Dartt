import 'dart:math';

main(List<String> args) {
  var a = "Mustafa Samet";
  var b = 19;
  var c = "Mühendislik fakültesi";
  var d = "Bilgisayar mühendisliği";

  print("My name is $a my age is $b my faculty is $c my department is $d");

  double x = 3;
  double y = 4;
  double result = sqrt(x * x + y * y);
  print(
      "If the first side is $x and the second side is $y then the result = $result");

  bool f = true;

  f = Random().nextBool();
  if (f) {
    print("F is true");
  } else {
    print("F is false");
  }
}
