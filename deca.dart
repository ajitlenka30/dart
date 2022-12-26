import 'dart:io';

class Abc {
  var a, b, ans, area;
  void func(a, b, c) {
    stdout.write("Enter base :- ");
    var a = int.parse(stdin.readLineSync() as String);
    stdout.write("Enter hight :- ");
    var b = int.parse(stdin.readLineSync() as String);

    stdout.write("Enter amount of lines :- ");
    var c = int.parse(stdin.readLineSync() as String);

    var ans = (a * b) / 2;
    var area = ans * c;

    print("area of decagon := $area");
  }
}

void main(List<String> args) {
  Abc obj = Abc();
  var a, b, c;
  obj.func(a, b, c);
}
