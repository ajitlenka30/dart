// import 'dart:io';

// void main(List<String> args) {
//   abc obj1 = abc();
//   obj1.ab();
// }

// class abc {
//   var a, s, b, no, id, price, k, nid, npass;
//   List ls = [];
//   void ab() {
//     print("!! welcome !!");
//     do {
//       print("\n!! 1.Add product !!");
//       print("!! 2.show product !!");
//       // print("!! 3.update product !!");
//       print("!! 3.remove product !!");
//       stdout.write("Enter your choice");
//       a = int.parse(stdin.readLineSync() as String);

//       // do {
//       switch (a) {
//         case 1:
//           print("\nYour choice is add product");
//           stdout.write("How many product you are sell : ");
//           b = int.parse(stdin.readLineSync() as String);

//           for (int i = 1; i <= b; i++) {
//             print("!! Your product number is $i !!");
//             stdout.write("Enter product id :");
//             id = int.parse(stdin.readLineSync() as String);
//             stdout.write("Enter product price :");
//             price = int.parse(stdin.readLineSync() as String);

//             ls.addAll([
//               {'id': id, 'price': price}
//             ]);
//           }
//           break;

//         case 2:
//           print("\n!! your choice is show product !!");
//           k = 1;
//           print(ls);

//           // for (int i = 0; i < ls.length; i++) {
//           // print("!! product number $k !!");
//           // print(ls);
//           // k++;
//           // }
//           break;
//         case 3:
//           print("\n!! Your choice is remove product !!");
//           stdout.write("Enter the number of want you to remove ");
//           nid = int.parse(stdin.readLineSync() as String);

//           ls.removeAt(nid - 1);
//           break;

//         default:
//       }
//       stdout.write("\nyou want to exit? (y/n)");
//       s = stdin.readLineSync() as String;
//     } while (s != 'y');
//   }
// }

import 'dart:io';

void main(List<String> args) {
  abc obj1 = abc();
  obj1.ab();
}

class abc {
  void ab() {
    do {
      print("!! 1.Admin registration !!");
      print("!! 2.Admin Login !!");
      print("!! 3.user  registration !!");
      print("!! 4.user  Login !!");
      stdout.write("Enter your choice :");

    } while ();
  }
}
