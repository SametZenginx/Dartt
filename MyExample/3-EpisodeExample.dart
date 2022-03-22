void main(List<String> args) {
  areaofRectangle();
  calculateofCircle();
  sumNumbers(5, 7);
  String sametsName = sayName("Samet");
  print(sametsName);
}

//FUNC
void areaofRectangle() {
  int width = 5;
  int heigth = 10;

  print("Area of rectangle is ${width * heigth}");
}

void calculateofCircle() {
  double PI = 3.14;
  int r = 5;

  print("Area of perimeter is ${PI * r * r}");
  print("Circle of circle is ${2 * PI * r}");
}

//FATARROWSHORTFUNC
int sumNumbers(int numb1, int numb2) => (numb1 + numb2);
String sayName(String name) => name;
