import 'dart:io';
class Task{
  Task(){
   stdout.write("Enter your first name:- ");
   String? name = stdin.readLineSync();
   stdout.write("Enter your midle name:- ");
   String? midle = stdin.readLineSync();
   stdout.write("Enter your last name:- ");
   String? last = stdin.readLineSync();
    
    List username =[name,midle,last];

    stdout.write("\n1. Remove");
    stdout.write("\n2. Replace");
    stdout.write("\n3. Add in end");
    stdout.write("\n4. Add in first");
    stdout.write("\n5. uper-case");

    stdout.write("\nEnter your choice :- ");
    int choice = int.parse(stdin.readLineSync()as String);

    switch(choice){

    case 1:
    stdout.write("\nyour entered name is :- $username");
    stdout.write("\nEnter name that you want to remove :- ");
    String? remove = stdin.readLineSync();
    username.remove(remove);  
    stdout.write("\nsuccessfully removed");
    stdout.write("\ncurrent name :- $username"); 
    break;

    case 2:
    stdout.write("\nyour entered name is :- $username");
    stdout.write("\nEnter index that you want to replace :- ");
    var replace = int.parse(stdin.readLineSync()as String);
    stdout.write("\nEnter replace name:- ");
    var element = stdin.readLineSync();

    username[replace] =  element;

    stdout.write("\nsuccessfully replaced");
    stdout.write("\ncurrent name :- $username");
    break;

    case 3:
    stdout.write("\nyour entered name is :- $name $midle $last");
    stdout.write("\nEnter name that you want to Add :- ");
    String? add = stdin.readLineSync();

    username.add(add);
    stdout.write("\nsuccessfully add in end");
    stdout.write("\ncurrent name :- $username");

    break;
    case 4:
    stdout.write("\nyour entered name is :- $username");
    stdout.write("\nEnter name that you want to Add :- ");
    String? end = stdin.readLineSync();

    username.insert(0, end);

    stdout.write("\nsuccessfully add in first");
    stdout.write("\ncurrent name :- $username");
    break;

    case 5:
    stdout.write("\nyour entered name is :- $username");
    stdout.write("\nEnter name that you want to Add :- ");
    String? end = stdin.readLineSync();

    username.insert(0, end);

    stdout.write("\nsuccessfully add in first");
    stdout.write("\ncurrent name :- $username");
    break;
    }
  }
}
void main(List<String> args) {
   Task();
}