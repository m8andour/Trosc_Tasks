import 'package:dart_task_3/dart_task_3.dart' as dart_task_3;

void main(List<String> arguments) {
  Circle circle = Circle(5);
  Rectangle rectangle = Rectangle(4, 6);

  printArea(circle);
  printArea(rectangle);
}

abstract class Shape {
  double area();
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);

  @override
  double area() {
    return 3.14159 * radius * radius;
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }
}

void printArea(Shape) {
  print('The Area is : ${Shape.area()}');
}
