//It appears in run-time.

main(List<String> args) {
  print("The program is starting...");
  try {
    int numb = 100 ~/ int.parse("Samet"); //IntegerDivisionByZeroException
    print(numb);
  } on IntegerDivisionByZeroException {
    print("The divisor cannot be 0");
  } on FormatException catch (e) {
    print("The divisor cannot be String");
    print(e.source); // Source throw the screen.
  } catch (e) {
    print("Error output ${e}");
  } finally {
    print("The operation is over.");
  }

  print("The program is finished.");
}
