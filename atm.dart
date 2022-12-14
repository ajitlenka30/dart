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
      print("\n\nlogin success");
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
      print("your current balance:- $cash"); 
      break;
    case 2:
      int cash = 150;
      print("Enter amount you want to deposit :- ");
      int cre = int.parse(stdin.readLineSync()as String);
      var credit = cre + cash;
      print("Cash credit success......");
      print("Current cash in your account:- $credit"); 
    break;
    case 3:
      // int cash = 150;
      print("Enter Principle Amount:- ");
      double amount = double.parse(stdin.readLineSync()as String);
      print("Enter Rate of Interest:- ");
      double rate = double.parse(stdin.readLineSync()as String);
      print("Enter Time Period:- ");
      double time = double.parse(stdin.readLineSync()as String);
     // var deb = cash - debit;
      double deb = amount * rate * time /100;
     // print("Cash Debit success........");
      print("total:- $deb");
      break;
    default:
      print("Please enter a valid choice...");
    }
}