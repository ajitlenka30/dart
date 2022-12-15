import 'dart:io';

void reg(){
    stdout.write("***************************************************************************");
    stdout.write("\nRegister your name :- ");
    String? name = stdin.readLineSync();
    stdout.write("\nRegister your pin :- ");
    var password = stdin.readLineSync()as String;
    stdout.write("\n***************************************************************************");
    stdout.write("\n\nregister complete");
    stdout.write("\n\n***************************************************************************");
    stdout.write("\nEnter your ATM name for login: ");
    String? nam = stdin.readLineSync();
    stdout.write("\nEnter your ATM pin: ");
    var pass = stdin.readLineSync()as String;
    stdout.write("\n***************************************************************************");

    if(name == nam && password == pass)
    {
      print("\n\n\t\tlogin success");
      stdout.write("\n***************************************************************************");
    }
    else 
    {
      print("\n\nplease enter vail password and name");
      stdout.write("\n***************************************************************************");
    } 
} 

void main(List<String> args) {
  reg(); 

  print("\n1. see your balance"); 
  print("\n2. credit in account");
  print("\n3. Debit cash form account");
  stdout.write("\n***************************************************************************");

  stdout.write("\nEnter your choice:- ");
  int choice = int.parse(stdin.readLineSync()as String);
  switch (choice) {
    case 1:
      int cash = 150;
      stdout.write("\n***************************************************************************");
      stdout.write("\nyour current balance:- $cash"); 
      stdout.write("\n***************************************************************************");
      break;
    case 2:
      int cash = 150;
      stdout.write("\n***************************************************************************");
      stdout.write("\nEnter amount you want to deposit :- ");
      int cre = int.parse(stdin.readLineSync()as String);
      var credit = cre + cash;
      stdout.write("\n***************************************************************************");
      stdout.write("\nCash credit success......");
      stdout.write("\n***************************************************************************");
      stdout.write("\nCurrent cash in your account:- $credit"); 
      stdout.write("\n***************************************************************************");
    break;
    case 3:
      stdout.write("\nEnter Principle Amount:- ");
      double amount = double.parse(stdin.readLineSync()as String);
      stdout.write("\nEnter Rate of Interest:- ");
      double rate = double.parse(stdin.readLineSync()as String);
      stdout.write("\nEnter Time Period:- ");
      double time = double.parse(stdin.readLineSync()as String);

      double deb = amount * rate * time /100;
      double total = deb + amount;

      stdout.write("\n\n***************************************************************************");
      stdout.write("\ntotal:- $total");
      stdout.write("\n\n***************************************************************************");
      break;
    default:
      stdout.write("\n\n***************************************************************************");
      stdout.write("\nPlease enter a valid choice...");
      stdout.write("\n\n***************************************************************************");
    }
}