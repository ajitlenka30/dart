import 'dart:io';

void main(List<String> args) {
  User obj = User();
  obj.user();
}

class Admin {
  void admin() {
    var chai;
    var biscuit;
    var coffee;

    stdout.write("\n4. Add product");
    stdout.write("\n2. Remove product");
    stdout.write("\n3. Replace product");

    List product = [chai, biscuit, coffee];

    stdout.write("\nkeya chahiye aap ko :- ");
    int choice = int.parse(stdin.readLineSync() as String);

    switch (choice) {
      case 1:
      
      break;

      case 2:
        stdout.write("\ncurrent we have these product :- $product");
        stdout.write("\nEnter name that you want to remove :- ");
        String? remove = stdin.readLineSync();
        product.remove(remove);
        stdout.write("\nsuccessfully removed product");
        stdout.write("\nupdated product list :- $product");
      break;

      case 3:
        stdout.write("\ncurrent we have these product :- $product");
        stdout.write("\nEnter index that you want to replace :- ");
        var replace = int.parse(stdin.readLineSync() as String);
        stdout.write("\nEnter replace name of product:- ");
        var element = stdin.readLineSync();

        product[replace] = element;

        stdout.write("\nsuccessfully replaced product");
        stdout.write("\nupdated product list:- $product");
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
