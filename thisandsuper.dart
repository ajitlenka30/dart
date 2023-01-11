import 'dart:io';

class Abc {
  var name;
  Abc(var name) {
    this.name = name;
    stdout.write("What is your name;- ");
  }
}

void main(List<String> args) {
  Abc obj = Abc("ajit");
}
