import 'dart:io';
import 'dart:math';

class Abc {
  var base;
  void func(base) {
    stdout.write("Enter base :- ");
    double base = double.parse(stdin.readLineSync() as String);

    double area = 5 / 2 * pow(base, 2) * sqrt(5 + 2); // * sqrt(5);

     print("area of decagon := $area");
  }
}

void main(List<String> args) {
  Abc obj = Abc();
  double base;
  obj.func(2);
}
