double areaOfCircle(double r) {
  const double pi = 3.141592653589793;
  return pi * r * r;
}

void main() {
  double area = areaOfCircle(5);
  print("Area of Circle: $area");
}
