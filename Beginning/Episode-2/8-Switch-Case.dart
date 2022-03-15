main(List<String> args) {
  String gradeValue = "BA";

  switch (gradeValue) {
    case "AA":
      print("Note is 90-100");
      break;
    case "BA":
      print("Note is 85-89");
      break;
    case "BB":
      print("Note is 80-84");
      break;
    case "CB":
      print("Note is 70-79");
      break;
    case "CC":
      print("Note is 60-69");
      break;
    case "DC":
      print("Note is 55-59");
      break;
    case "DD":
      print("Note is 50-54");
      break;
    case "FF":
      print("Note is 0-49");
      break;
    default:
      print("Invalid letters.");
  }
  int numb = 12;
  int digit = numb ~/ 10;

  switch (digit) {
    case 3:
      print("Numb is greater than 30");
      break;
    case 2:
      print("Numb is greater than 20.");
      break;
    case 1:
      print("Numb is greater than 10.");
      break;
    case 0:
      print("Numb is greater than 0.");
      break;
  }
}
