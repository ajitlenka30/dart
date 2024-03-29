import 'dart:io';

void main(List<String> args) {
  User obj = User();
  var ans;
  do {
    stdout.write("\n***************************************************************************");
    stdout.write("\n1. Admin");
    stdout.write("\n2. User");
    stdout.write("\n***************************************************************************");
    stdout.write("\nEnter your choice:- ");
    ans = int.parse(stdin.readLineSync() as String);

    switch (ans) {
      case 1:
        obj.admin();
        break;
      case 2:
        obj.user();
        break;
      default:
        stdout.write("\n***************************************************************************");
        stdout.write("invalid choice try again");
        stdout.write("\n***************************************************************************");
    }
    stdout.write("\ndo you want to switch to other panel [Admin/User] [1] :- ");
    ans = int.parse(stdin.readLineSync()!);
    stdout.write("\n***************************************************************************");
  } while (ans == 1);
}

class Admin {
  var userans1;
  var product1;
  var product2;
  var product3;
  void admin() {
    stdout.write("\n***************************************************************************");
    stdout.write("\nEnter 1st product name :-");
    product1 = stdin.readLineSync();
    stdout.write("\n***************************************************************************");
    stdout.write("\nEnter 2st product name :-");
    product2 = stdin.readLineSync();
    stdout.write("\n***************************************************************************");
    stdout.write("\nEnter 3st product name :-");
    product3 = stdin.readLineSync();

    List product = [product1, product2, product3];

    do {
      stdout.write("\n***************************************************************************");
      stdout.write("\n1. Add product");
      stdout.write("\n2. Remove product");
      stdout.write("\n3. Replace product");
      stdout.write("\n4. current product list");
      stdout.write("\n***************************************************************************");

      stdout.write("\n\nkeya krna hai aap ko :- ");
      int choice = int.parse(stdin.readLineSync() as String);
      stdout.write("\n***************************************************************************");

      switch (choice) {
        case 1:
          stdout.write("\ncurrent we have these product :- $product");
          stdout.write("\n***************************************************************************");
          stdout.write("\nEnter new product name :- ");
          String? add = stdin.readLineSync();
          stdout.write("\n***************************************************************************");
          product.add(add);
          stdout.write("\nsuccessfully added new product");
          stdout.write("\n***************************************************************************");
          break;

        case 2:
          stdout.write("\ncurrent we have these product :- $product");
          stdout.write("\n***************************************************************************");
          stdout.write("\nEnter name that you want to remove :- ");
          String? remove = stdin.readLineSync();
          stdout.write("\n***************************************************************************");
          product.remove(remove);
          stdout.write("\n***************************************************************************");
          stdout.write("\nsuccessfully removed product");
          stdout.write("\n***************************************************************************");
          break;

        case 3:
          stdout.write("\ncurrent we have these product :- $product");
          stdout.write("\n***************************************************************************");
          stdout.write("\nEnter product name that you want to replace [type in num.] :- ");
          var replace = int.parse(stdin.readLineSync() as String);
          stdout.write("\n***************************************************************************");
          stdout.write("\nEnter replace name of product:- ");
          var element = stdin.readLineSync();
          stdout.write("\n***************************************************************************");
          product[replace] = element;
          stdout.write("\nsuccessfully replaced product");
          stdout.write("\n***************************************************************************");
          break;
        case 4:
          stdout.write("\ncurrent we have these product :- $product");
          stdout.write("\n***************************************************************************");
          break;
        default:
          stdout.write("\nplease enter a valid option...");
          stdout.write("\n***************************************************************************");
      }
      stdout.write("\ndo you want to continue press [1] :- ");
      userans1 = int.parse(stdin.readLineSync()!);
      stdout.write("\n***************************************************************************");
    } while (userans1 == 1);
  }
}

class User extends Admin {
  void user() {
    var total;
    int? ans3;
    int? order1;
    int? order2;
    int? order3;
    do {
      stdout.write("***************************************************************************");
      print("\n1.$product1 RS 2");
      print("2.$product2 RS 5");
      print("3.$product3 RS 10");
      print("4.Total");
      stdout.write("***************************************************************************");

      stdout.write("\nkeya chahiye aap ko :- ");
      int ans = int.parse(stdin.readLineSync() as String);

      switch (ans) {
        case 1:
          stdout.write("***************************************************************************");
          stdout.write("\nApp nai $product1 select kiya hai");
          stdout.write("\nkitna hai order :- ");
          order1 = int.parse(stdin.readLineSync()!);
          total = order1 * 2;
          stdout.write("\n***************************************************************************");
          break;

        case 2:
          stdout.write("***************************************************************************");
          stdout.write("\nApp nai $product2 select kiya hai");
          stdout.write("\nkitna hai order :- ");
          order2 = int.parse(stdin.readLineSync() as String);
          total = order2 * 5;
          stdout.write("\n***************************************************************************");
          break;

        case 3:
          stdout.write("***************************************************************************");
          stdout.write("\nApp nai $product3 select kiya hai");
          stdout.write("\nkitna hai order :- ");
          order3 = int.parse(stdin.readLineSync() as String);
          total = order3 * 10;
          stdout.write("\n***************************************************************************");
          break;
        case 4:
          stdout.write("**********************************[Bill]***********************************");
          stdout.write("\nTotal ordered $product1 :- $order1");
          stdout.write("\nTotal ordered $product2 :- $order2");
          stdout.write("\nTotal ordered $product3 :- $order3");
          stdout.write("\nTotal bill :- $total");
          stdout.write("\n***************************************************************************");
          break;
        default:
          stdout.write("\n***************************************************************************");
          stdout.write("please enter a valid option...");
          stdout.write("\n***************************************************************************");
      }
      stdout.write("\ndo you want to continue press [1] :- ");
      ans3 = int.parse(stdin.readLineSync()!);
      stdout.write("\n***************************************************************************");
    } while (ans3 == 1);
  }
}