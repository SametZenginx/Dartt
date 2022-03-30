import 'dart:math';

main(List<String> args) {
  try {
    double value = squareRoot(-23);
    print("Value: ${value.toStringAsFixed(2)}");
  } on FormatException catch (e) {
    print(e.message);
  } catch (e) {
    print(e);
  }
}

double squareRoot(int i) {
  try {
    if (i < 0) {
      throw FormatException("Number cannot negative.");
    } else
      return sqrt(i);
  } on FormatException catch (e) {
    print(e.message + " I'm in Method.");
  } finally {
    return 0;
  }
}
