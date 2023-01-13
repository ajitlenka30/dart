import 'dart:io';

class Task {
  Task() {
    stdout.write("Enter your first name:- ");
    String? name = stdin.readLineSync();
    stdout.write("Enter your middle name:- ");
    String? middle = stdin.readLineSync();
    stdout.write("Enter your last name:- ");
    String? last = stdin.readLineSync();

    stdout.write("\n1. Remove in  String");
    stdout.write("\n2. Remove in list");
    stdout.write("\n3. Replace");
    stdout.write("\n4. Add in end");
    stdout.write("\n5. Add in first");
    stdout.write("\n6. uper-case");

    stdout.write("\n\nEnter your choice :- ");
    int choice = int.parse(stdin.readLineSync() as String);

    switch (choice) {
      case 1:
        stdout.write("\nyour entered name is :- $name $middle $last");
        stdout.write("\nEnter name that you want to remove :- ");
        var to = stdin.readLineSync() as String;
        print(name?.replaceFirst(name, to));
        stdout.write("\nsuccessfully removed");
        stdout.write("\ncurrent name :- $name $middle $last");
      break;

      case 2:
        List username = [name, middle, last];
        stdout.write("\nyour entered name is :- $username");
        stdout.write("\nEnter name that you want to remove :- ");
        String? remove = stdin.readLineSync();
        username.remove(remove);
        stdout.write("\nsuccessfully removed");
        stdout.write("\ncurrent name :- $username");
      break;

      case 3:
        List username = [name, middle, last];
        stdout.write("\nyour entered name is :- $username");
        stdout.write("\nEnter index that you want to replace :- ");
        var replace = int.parse(stdin.readLineSync() as String);
        stdout.write("\nEnter replace name:- ");
        var element = stdin.readLineSync();

        username[replace] = element;

        stdout.write("\nsuccessfully replaced");
        stdout.write("\ncurrent name :- $username");
      break;

      case 4:
        List username = [name, middle, last];
        stdout.write("\nyour entered name is :- $name $middle $last");
        stdout.write("\nEnter name that you want to Add :- ");
        String? add = stdin.readLineSync();

        username.add(add);

        stdout.write("\nsuccessfully add in end");
        stdout.write("\ncurrent name :- $username");

      break;
      case 5:
        List username = [name, middle, last];
        stdout.write("\nyour entered name is :- $username");
        stdout.write("\nEnter name that you want to Add :- ");
        String? end = stdin.readLineSync();

        username.insert(0, end);

        stdout.write("\nsuccessfully add in first");
        stdout.write("\ncurrent name :- $username");
      break;

      case 6:
        stdout.write("\nyour entered name is :- $name $middle $last");
        stdout.write("\nPlease Enter text in upper case");

        stdout.write("\nEnter name that you want to upper case :- ");
        var to = stdin.readLineSync() as String;

        var as = name?.replaceFirst(name, to);

        stdout.write("\nsuccessfully uppercase");
        stdout.write("\ncurrent name :- $as $middle $last");
      break;
    }
  }
}

void main(List<String> args) {
  Task();
}
