import 'dart:io';

Future<void> main() async {
  print("Enter your age:- ");
  int? age = int.parse(stdin.readLineSync()!);

  if (age > 18) {
    print("you can vote....");
  } else {
    print("you can't vote.....");
  }
}
