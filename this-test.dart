class Test {
  String? product1 = "chai";
  String? product2 = "coffee";
  String? product3 = "biscuit";
}

class Abc extends Test {
  void func() {
    print("$product1");
  }
}

void main(List<String> args) {
  Abc obj = Abc();
  obj.func();
}
