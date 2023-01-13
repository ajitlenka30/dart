import 'dart:io';

void main(List<String> args) {
  User obj = User();
  obj.user();
}

class Admin {
  void admin() {
    
    stdout.write("\n4. Add product");
    stdout.write("\n2. Remove product");
    stdout.write("\n3. Replace product");

    stdout.write("\nkeya chahiye aap ko :- ");
    int choice = int.parse(stdin.readLineSync() as String);

    switch(choice){
      case 1:
        List username = [name, middle, last];
        stdout.write("\nyour entered name is :- $username");
        stdout.write("\nEnter name that you want to remove :- ");
        String? remove = stdin.readLineSync();
        username.remove(remove);
        stdout.write("\nsuccessfully removed");
        stdout.write("\ncurrent name :- $username");
      break;









    }
  }
}

class User {
  void user() {
    stdout.write(
        "***************************************************************************");
    print("\n1.chai RS 2");
    print("2.coffee RS 5");
    print("3.biscuit RS 10");
    stdout.write(
        "***************************************************************************");

    var ls = stdout.write("\nkeya chahiye aap ko :- ");
    int ans = int.parse(stdin.readLineSync() as String);

    switch (ans) {
      case 1:
        stdout.write(
            "***************************************************************************");
        stdout.write("\nApp nai chai select kiya hai");
        stdout.write("\nkitna hai order :- ");
        int order = int.parse(stdin.readLineSync() as String);
        stdout.write(
            "**********************************[Bill]***********************************");
        var total = order * 2;
        stdout.write("\ntotal hua apka :- $total");
        stdout.write(
            "\n***************************************************************************");
        break;

      case 2:
        stdout.write(
            "***************************************************************************");
        stdout.write("\nApp nai coffee select kiya hai");
        stdout.write("\nkitna hai order :- ");
        int order = int.parse(stdin.readLineSync() as String);
        stdout.write(
            "**********************************[Bill]***********************************");
        var total = order * 5;
        stdout.write("\ntotal hua apka :- $total");
        stdout.write(
            "\n***************************************************************************");
        break;

      case 3:
        stdout.write(
            "***************************************************************************");
        stdout.write("\nApp nai biscuit select kiya hai");

        stdout.write("\nkitna hai order :- ");
        int order = int.parse(stdin.readLineSync() as String);

        stdout.write(
            "**********************************[Bill]***********************************");
        var total = order * 10;
        stdout.write("\ntotal hua apka :- $total");
        stdout.write(
            "\n***************************************************************************");
        break;

      default:
        stdout.write("please enter a valid option...");
    }
  }
}
