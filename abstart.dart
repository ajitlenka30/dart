abstract class Abc {
  void func(no1, no2);
  void func2(no1, no2); // we can't pass body here
}

class B extends Abc {
  @override               //override  for access upper class veriable
  void func(no1, no2) {
    print("ans = ${no1 + no2}");  // we can pass body here
  }

  @override
  void func2(no1, no2) {
    print("ans = ${no1 - no2}");
  }
}

void main(List<String> args) {
  B obj = B();
  obj.func(10, 20);
  obj.func2(69, 68);
}
