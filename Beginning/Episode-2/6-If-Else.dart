main(List<String> args) {
  int x = 5;
  int y = 8;

  if (x > y) {
    print("$x > $y");
  } else if (y > x) {
    print("$y > $x");
  } else {
    print("$x = $y");
  }

  int gradeValue = 85;

  if (gradeValue >= 90 && gradeValue <= 100) {
    print("AA");
  } else if (gradeValue >= 85 && gradeValue < 90) {
    print("BA");
  } else if (gradeValue >= 80 && gradeValue < 85) {
    print("BB");
  } else if (gradeValue >= 70 && gradeValue < 80) {
    print("CB");
  } else if (gradeValue >= 60 && gradeValue < 70) {
    print("CC");
  } else if (gradeValue >= 55 && gradeValue < 60) {
    print("DC");
  } else if (gradeValue >= 50 && gradeValue < 55) {
    print("DD");
  } else if (gradeValue < 50 && gradeValue >= 0) {
    print("FF");
  } else {
    print("Invalid Value.");
  }
}
