import 'dart:io';

void main(List<String> args) {
  int? ans;
  stdout.write(
      "***************************************************************************");
  stdout.write("\nRegister your name :- ");
  String? name = stdin.readLineSync();
  stdout.write("\nRegister your pin :- ");
  var password = stdin.readLineSync() as String;
  stdout.write(
      "\n***************************************************************************");
  stdout.write("\n\nregister complete");
  stdout.write(
      "\n\n***************************************************************************");
  do {
    stdout.write("\nEnter your ATM name for login: ");
    String? nam = stdin.readLineSync();
    stdout.write("\nEnter your ATM pin: ");
    var pass = stdin.readLineSync() as String;
    stdout.write(
        "\n***************************************************************************");

    if (name == nam && password == pass) {
      print("\n\n\t\tlogin success");
      stdout.write(
          "\n***************************************************************************");
    } else {
      print("\n\nplease enter vail password and name");
      stdout.write(
          "\n***************************************************************************");
    }
    stdout.write("\ndo you want to continue:- ");
    // ans = stdin.readLineSync();
    ans = int.parse(stdin.readLineSync()!);
  } while (1 < ans);
}
