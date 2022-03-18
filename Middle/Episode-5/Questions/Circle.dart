class Circle {
  double _PI = 3.14;
  int _radius = 1;

  Circle(int r) {
    _rCheck = r;
  }

  void set _rCheck(int value) {
    if (value > 0) {
      _radius = value;
    } else {
      _radius = 1;
    }
  }

  double areaofCircle() {
    return _PI * _radius * _radius;
  }

  double perimeterofCircle() {
    return _PI * _radius * 2;
  }
}
