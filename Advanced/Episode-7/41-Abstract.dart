/*
  Abstract abstract class: It is used to abstract between classes.
Objects cannot be produced from abstract classes, 
there are normal and abstract methods in abstract classes.
abstract methods must be overridden by subclasses.
  If a class has one abstract method, 
that class must be defined as abstract.
*/
main(List<String> args) {
  Shape s1 = Square(3);
  print(s1.calculateArea());
  print(s1.calculatePerimeter());
  s1.greet();

  Shape s2 = Rectangle(4, 6);
  print(s2.calculateArea());
  print(s2.calculatePerimeter());
  s2.greet();

  Shape s3 = Circle(3);
  print(s3.calculateArea());
  print(s3.calculatePerimeter());
  s3.greet();

  List<Square> allSquare = [];
  List<Rectangle> allRectangle = [];
  List<Circle> allCircle = [];

  List<Shape> allShape = [];
  allShape.add(s1);
  allShape.add(s2);
  test(s1);
}

void test(Shape shape) {
  shape.greet();
}

abstract class Shape {
  double calculateArea();
  double calculatePerimeter();
  void greet() {
    print("I'm Shape");
  }
}

class Square extends Shape {
  int edge;

  Square(this.edge);

  @override
  double calculateArea() {
    return edge * edge.toDouble();
  }

  @override
  double calculatePerimeter() {
    return edge * 4.toDouble();
  }

  @override
  void greet() {
    print("I'm Square.");
  }
}

class Rectangle extends Shape {
  int shortEdge, longEdge;

  Rectangle(this.shortEdge, this.longEdge);

  @override
  double calculateArea() {
    return shortEdge * longEdge.toDouble();
  }

  @override
  double calculatePerimeter() {
    return 2 * (shortEdge + longEdge).toDouble();
  }

  @override
  void greet() {
    print("I'm Rectange.");
  }
}

class Circle extends Shape {
  int r;
  double PI = 3.14;

  Circle(this.r);

  @override
  double calculateArea() {
    return 2 * PI * r;
  }

  @override
  double calculatePerimeter() {
    return PI * r * r;
  }

  @override
  void greet() {
    print("I'm Circle.");
  }
}
