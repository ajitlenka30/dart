import 'dart:io';

class Reg {
  void reg() {
    int? ans;

    stdout.write(
        "***************************************************************************");
    stdout.write("\nRegister your name :- ");
    var name = stdin.readLineSync();
    stdout.write("\nRegister your pin :- ");
    var password = stdin.readLineSync() as String;
    stdout.write(
        "\n***************************************************************************");
    stdout.write("\n\nregister complete");
    do {
      stdout.write(
          "\n\n***************************************************************************");
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
      stdout.write("\ndo you want to continue press [1/2] :- ");
      ans = int.parse(stdin.readLineSync()!);
    } while (1 < ans);
  }
}

class Atm extends Reg {
  void atm2() {
    int balance = 5000;

    bool run = true;
    while (run) {
      stdout.write(
          "\n***************************************************************************");
      stdout.write("\nChoose 1 for Withdraw");
      stdout.write("\nChoose 2 for Deposit");
      stdout.write("\nChoose 3 for Check Balance");
      stdout.write("\nChoose 4 for EXIT");
      stdout.write(
          "\n***************************************************************************");
      stdout.write("\n\nChoose the operation you want to perform:");
      var choice = int.parse(stdin.readLineSync() as String);
      stdout.write(
          "\n***************************************************************************");

      switch (choice) {
        case 1:
          stdout.write("\nEnter money to be withdrawn:");
          var withdraw = int.parse(stdin.readLineSync() as String);
          stdout.write(
              "\n***************************************************************************");
          if (balance >= withdraw) {
            balance = balance - withdraw;
            stdout.write("\nPlease collect your money");
          } else {
            stdout.write(
                "\n***************************************************************************");
            stdout.write("\nInsufficient Balance");
            stdout.write(
                "\n***************************************************************************");
          }
          break;

        case 2:
          stdout.write("\nEnter money to be deposited:");
          var deposit = int.parse(stdin.readLineSync() as String);
          stdout.write(
              "\n***************************************************************************");
          balance = balance + deposit;
          stdout.write(
              "\n***************************************************************************");
          stdout.write("\nYour Money has been successfully deposit");
          stdout.write(
              "\n***************************************************************************");
          break;

        case 3:
          stdout.write("\nBalance : $balance");
          stdout.write(
              "\n***************************************************************************");
          break;
        default:
          stdout.write("\nGood bye");
          stdout.write(
              "\n***************************************************************************");
          run = false;
      }
    }
  }
}

void main(List<String> args) {
  Atm obj = Atm();
  obj.reg();
  obj.atm2();
}
