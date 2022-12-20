void main(List<String> args) {
  var ls = [10, 20, 30, 40, 50, 60, 70, 80];

  ls.add(60);
  print(ls); //[10, 20, 30, 40, 50, 60]

  ls.addAll([60,70]);
  print(ls); // print will be [10, 20, 30, 40, 50, 60, 70]

  ls.insert(1,50);
  print(ls); // print will be replace index 1 value [20 = 50]

  ls.insertAll(1, [11,12,13]);
  print(ls); // print will replace index 1 and it will add multiple data [10, 11, 12, 13, 20, 30, 40, 50]

  ls[0] = 100;
  print(ls); // print will replace index value 0 = 100

  ls.replaceRange(0, 3,[800,90,84]);
  print(ls); // print will replace values form index 0[start] index end [3] and output [800, 90, 84, 40, 50, 60, 70, 80]

  ls.remove(20);
  print(ls); // print removed data form list out put [10, 30, 40, 50, 60, 70, 80]

  ls.removeAt(2);
  print(ls); // print removed index output [10, 20, 40, 50, 60, 70, 80]

   ls.removeLast();
   print(ls); //  last index removed output [10, 20, 30, 40, 50, 60, 70]

   ls.removeRange(0, 2);
   print(ls);  // remove index range form 0 as start and 2 as and out put [30, 40, 50, 60, 70, 80]
}
