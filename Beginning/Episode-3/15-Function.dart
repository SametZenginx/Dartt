/*
Thanks to the function concept, we break down our problems into small subproblems 
that are much more readable and easy to find faults.
We can develop applications.

While developing an application, solving a problem,
we need to divide the codes that do a certain job in that problem into methods.
We can create a method or function for this.

Methods may or may not have any parameters.
Methods can return a value. Method definitions that do not return a value are preceded by void.
In Dart language, return and method return data type value is optional, 
so we don't have to specify it.
*/

void main(List<String> args) {
  calculatethePerimeter();
  int area = calculatetheArea(5, 10);
  print("Area is $area");
  int volume = calculatetheVolume(8, 9, 10);
  print("Volume is $volume");
}

// Not parameter
void calculatethePerimeter() {
  int width = 5, heigth = 10;
  int perimeter = (width + heigth) * 2;
  print("Perimeter is $perimeter");
}

// Parameter
int calculatetheArea(int width, int heigth) {
  int area = width * heigth;
  print("function Area is $area");
  return area;
}

int calculatetheVolume(int width, int heigth, int size) {
  int volume = width * heigth * size;
  return volume;
}
