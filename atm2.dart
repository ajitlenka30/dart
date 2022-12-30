import 'dart:io';

void reg() {
  var ans;

    stdout.write("***************************************************************************");
    stdout.write("\nRegister your name :- ");
    String? name = stdin.readLineSync();
    stdout.write("\nRegister your pin :- ");
    var password = stdin.readLineSync() as String;
    stdout.write("\n***************************************************************************");
    stdout.write("\n\nregister complete");
    stdout.write("\n\n***************************************************************************");
    do {
    stdout.write("\nEnter your ATM name for login: ");
    String? nam = stdin.readLineSync();
    stdout.write("\nEnter your ATM pin: ");
    var pass = stdin.readLineSync() as String;
    stdout.write("\n***************************************************************************");

    if (name == nam && password == pass) {
      print("\n\n\t\tlogin success");
      stdout.write("\n***************************************************************************");
    } else {
      print("\n\nplease enter vail password and name");
      stdout.write("\n***************************************************************************");
    }
    stdout.write("\nDo you want to continue (Y/N)?");
    var ans = stdin.readLineSync();
  } while ((ans != 'N') && (ans != 'n'));
}

void main(List<String> args) {
  reg();

  int balance = 5000, withdraw, deposit;
  var ans;

  do {

  stdout.write("\nChoose 1 for Withdraw");
  stdout.write("\nChoose 2 for Deposit");
  stdout.write("\nChoose 3 for Check Balance");
  stdout.write("\nChoose 4 for EXIT");

  stdout.write("\nChoose the operation you want to perform:");
  var choice = int.parse(stdin.readLineSync() as String);

    switch (choice) {
      case 1:
        stdout.write("Enter money to be withdrawn:");
        var withdraw = int.parse(stdin.readLineSync() as String);
        if (balance >= withdraw) {
          balance = balance - withdraw;
          stdout.write("Please collect your money");
        } else {
          stdout.write("Insufficient Balance");
        }
        break;

      case 2:
        stdout.write("Enter money to be deposited:");
        var deposit = int.parse(stdin.readLineSync() as String);
        balance = balance + deposit;
        stdout.write("Your Money has been successfully depsited");
        stdout.write("");
        break;

      case 3:
        stdout.write("Balance : $balance");
        stdout.write("");
        break;
      default:
        stdout.write("\nexit");
    }
    stdout.write("\nDo you want to continue (Y/N)?\n");
    var ans = stdin.readLineSync();
  } while ((ans != 'Y') && (ans != 'N') && (ans != 'y') && (ans != 'n'));
}
