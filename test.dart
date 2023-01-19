import 'dart:io';

class Admin {
  var userans1;
  var product1;
  var product2;
  var product3;
  void admin() {

    stdout.write("Enter 1st product name =");
    product1 = stdin.readLineSync();
    stdout.write("\nEnter 2st product name =");
    product2 = stdin.readLineSync();
    stdout.write("\nEnter 3st product name =");
    product3 = stdin.readLineSync();

  List product = [product1, product2, product3];

    do {
      stdout.write(
          "\n***************************************************************************");
      stdout.write("\n1. Add product");
      stdout.write("\n2. Remove product");
      stdout.write("\n3. Replace product");
      stdout.write(
          "\n***************************************************************************");


      stdout.write("\n\nkeya krna hai aap ko :- ");
      int choice = int.parse(stdin.readLineSync() as String);
      stdout.write(
          "\n***************************************************************************");

      switch (choice) {
        case 1:
          stdout.write("\ncurrent we have these product :- $product");
          stdout.write(
              "\n***************************************************************************");
          stdout.write("\nEnter new product name :- ");
          String? add = stdin.readLineSync();
          stdout.write(
              "\n***************************************************************************");
          product.add(add);
          stdout.write("\nsuccessfully added new product");
          // stdout.write("\nupdated product list :- $product");
          stdout.write(
              "\n***************************************************************************");
          break;

        case 2:
          stdout.write("\ncurrent we have these product :- $product");
          stdout.write(
              "\n***************************************************************************");
          stdout.write("\nEnter name that you want to remove :- ");
          String? remove = stdin.readLineSync();
          stdout.write(
              "\n***************************************************************************");
          product.remove(remove);
          stdout.write(
              "\n***************************************************************************");
          stdout.write("\nsuccessfully removed product");
          // stdout.write("\nupdated product list :- $product");
          stdout.write(
              "\n***************************************************************************");
          break;

        case 3:
          stdout.write("\ncurrent we have these product :- $product");
          stdout.write(
              "\n***************************************************************************");
          stdout.write("\nEnter product name that you want to replace :- ");
          var replace = int.parse(stdin.readLineSync() as String);
          stdout.write(
              "\n***************************************************************************");
          stdout.write("\nEnter replace name of product:- ");
          var element = stdin.readLineSync();
          stdout.write(
              "\n***************************************************************************");
          product[replace] = element;
          stdout.write("\nsuccessfully replaced product");
          // stdout.write("\nupdated product list:- $product");
          stdout.write(
              "\n***************************************************************************");
          break;
      }
      stdout.write("\ndo you want to continue press [1] :- ");
      userans1 = int.parse(stdin.readLineSync()!);
      stdout.write(
          "\n***************************************************************************");
    } while (userans1 == 1);
  }
}

void main(List<String> args) {
  Admin obj = Admin();
  obj.admin();
}
