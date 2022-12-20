import 'dart:io';

void main(List<String> args) {
  print("Enter your name:- ");
  String? name = stdin.readLineSync();

  print("Enter student roll no:- ");
  int roll = int.parse(stdin.readLineSync() as String);
  print("Enter marks of odia:- ");
  int a = int.parse(stdin.readLineSync() as String);
  print("Enter marks of english:- ");
  int b = int.parse(stdin.readLineSync() as String);
  print("Enter marks of hindi:- ");
  int c = int.parse(stdin.readLineSync() as String);
  print("Enter marks of math:- ");
  int d = int.parse(stdin.readLineSync() as String);
  print("Enter marks of science:- ");
  int e = int.parse(stdin.readLineSync() as String);

  var total = a + b + c + d + e;

  print("Entered name of student := $name");
  print("Entered roll NO of student := $roll");
  print("Entered marks  of odia:= $a");
  print("Entered marks  of english:= $b");
  print("Entered marks  of hindi:= $c");
  print("Entered marks  of science:= $d");
  print("Entered total marks:= $total");

  if (30 > a) {
    print("fail in odia");
  } else if (30 > b) {
    print("fail in english");
  } else if (30 > c) {
    print("fail in hindi");
  } else if (30 > d) {
    print("fail in math");
  } else if (30 > e) {
    print("fail in science");
  } else {
    print("sab mai pass ho app....");
  }

  if (400 > total) {
    print("fail hoo app abb chai ki dukan khol..");
  } else {
    print("pass ho geya bidu abb mithai batt....");
  }

  if (total > 400) {
    print("grade a");
  } else if (total > 350) {
    print("grade b");
  } else if (total > 300) {
    print("grade c");
  } else if (total > 250) {
    print("grade d");
  } else {
    print("grade F");
  }

  var per = total / 5;
  print("total Percentage is := $per");
}
