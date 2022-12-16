import 'dart:io';

void main(List<String> args) {
  print("1. number");
  print("2 facebook");
  print("3 gmail");

  stdout.write("Enter your choice:- ");
  int choice = int.parse(stdin.readLineSync() as String);
  switch (choice) {
    case 1:
      stdout.write(
          "***************************************************************************");
      stdout.write("\nEnter your name: ");
      var name = stdin.readLineSync() as String;
      stdout.write("\nEnter your password: ");
      var password = stdin.readLineSync() as String;
      stdout.write(
          "\n***************************************************************************");
      stdout.write("\n\nregister complete");
      stdout.write(
          "\n\n***************************************************************************");
      stdout.write("\nEnter your registered name: ");
      var nam = stdin.readLineSync() as String;
      stdout.write("\nEnter your registered password: ");
      var pass = stdin.readLineSync() as String;
      stdout.write(
          "\n***************************************************************************");
      if (name == nam && password == pass) {
        print("\n\nlogin success");
        stdout.write(
            "\n***************************************************************************");
      } else {
        print("\n\nplease enter vail password and name");
        stdout.write(
            "\n***************************************************************************");
      }
      break;

    case 2:
      stdout.write(
          "***************************************************************************");
      stdout.write("\nEnter your Facebook name: ");
      var name = stdin.readLineSync() as String;
      stdout.write("\nEnter your facebook password: ");
      var password = stdin.readLineSync() as String;
      stdout.write(
          "\n***************************************************************************");
      stdout.write("\n\nregister complete");
      stdout.write(
          "\n\n***************************************************************************");
      stdout.write("\nEnter your facebook name: ");
      var nam = stdin.readLineSync() as String;
      stdout.write("\nEnter your facebook password: ");
      var pass = stdin.readLineSync() as String;
      stdout.write(
          "\n***************************************************************************");
      if (name == nam && password == pass) {
        print("\n\nlogin success");
        stdout.write(
            "\n***************************************************************************");
      } else {
        print("\n\nplease enter vail facebook password and name");
        stdout.write(
            "\n***************************************************************************");
      }
      break;

    case 3:
      stdout.write(
          "***************************************************************************");
      stdout.write("\nEnter your gmail id: ");
      var name = stdin.readLineSync() as String;
      stdout.write("\nEnter your gmail password: ");
      var password = stdin.readLineSync() as String;
      stdout.write(
          "\n***************************************************************************");
      stdout.write("\n\nregister complete");
      stdout.write(
          "\n\n***************************************************************************");
      stdout.write("\nEnter your gmail name: ");
      var nam = stdin.readLineSync() as String;
      stdout.write("\nEnter your gmail password: ");
      var pass = stdin.readLineSync() as String;
      stdout.write(
          "\n***************************************************************************");
      if (name == nam && password == pass) {
        print("\n\nlogin success");
        stdout.write(
            "\n***************************************************************************");
      } else {
        print("\n\nplease enter vail password and name");
        stdout.write(
            "\n***************************************************************************");
      }
      break;
    default:
      print("GANJA MAT FUK SUBHA SUBHA...................");
  }
}
