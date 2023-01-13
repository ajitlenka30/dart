import 'dart:io';

void main(List<String> args) {
  Stu obj = Stu();
  var name, roll, id;
  obj.func(name, roll, id);
}

class Stu {
  var name, roll, id;
  void func(name, roll, id) {
    stdout.write("Enter name of student :- ");
    var name = stdin.readLineSync() as String;
    stdout.write("Enter roll number of student :- ");
    var roll = stdin.readLineSync() as String;
    stdout.write("Enter id number of student :- ");
    var id = stdin.readLineSync() as String;
  }
}
