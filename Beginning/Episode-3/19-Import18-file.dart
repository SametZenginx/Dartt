// FUNC-1:
int function1(int numb) {
  int result = 0;

  for (int i = 0; i <= numb; i++) {
    if (i % 2 == 0) {
      result += i;
    }
  }
  return result;
}

// FUNC-2:
double circleArea(double r, {double pi = 3.14}) {
  double result = 0;
  result = 2 * pi * r;
  return result;
}

// FUNC-3:
void triangle(int edge1, int edge2, int edge3) {
  if (edge1 + edge2 <= edge3 ||
      edge1 + edge3 <= edge2 ||
      edge2 + edge3 <= edge1)
    print("This is not triangle");
  else {
    if (edge1 == edge2 && edge1 == edge3 && edge2 == edge3) {
      print("Equilateral triangle.");
    } else if (edge1 == edge2 || edge1 == edge3 || edge2 == edge3) {
      print("Isosceles triangle.");
    } else {
      print("Scalene triangle.");
    }
  }
}
