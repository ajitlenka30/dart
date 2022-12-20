import 'dart:io';

void main(List<String> args) {

  stdout.write("***************************************************************************");
  print("\n1.chai RS 2");
  print("2.coffee RS 5");
  print("3.biscuit RS 10");
  stdout.write("***************************************************************************");

  var ls = stdout.write("\nkeya chahiye aap ko :- ");
  int ans = int.parse(stdin.readLineSync() as String);

  switch (ans) {
    case 1:
      stdout.write("***************************************************************************");
      stdout.write("\nApp nai chai select kiya hai");
      stdout.write("\nkitna hai order :- ");
      int order = int.parse(stdin.readLineSync() as String);
      stdout.write("**********************************[Bill]***********************************");
      var total = order * 2;
      stdout.write("\ntotal hua apka :- $total");
      stdout.write("\n***************************************************************************");
    break;

    case 2:
      stdout.write("***************************************************************************");
      stdout.write("\nApp nai coffee select kiya hai");
      stdout.write("\nkitna hai order :- ");
      int order = int.parse(stdin.readLineSync() as String);
      stdout.write("**********************************[Bill]***********************************");
      var total = order * 5;
      stdout.write("total hua apka :- $total");
      stdout.write("\n***************************************************************************");
    break;

    case 3:
      stdout.write("***************************************************************************");
      stdout.write("\nApp nai biscuit select kiya hai");

      stdout.write("\nkitna hai order :- ");
      int order = int.parse(stdin.readLineSync() as String);

      stdout.write("**********************************[Bill]***********************************");
      var total = order * 10;
      stdout.write("total hua apka :- $total");
      stdout.write("\n***************************************************************************");
    break;

    default:
      stdout.write("please enter a valid option...");
  }
}