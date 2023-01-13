class A {
  void func(no1, no2) {}
}

class B {
  void fun2(no1, no2) {}
}

class C {
  void fun3(no1, no2) {}
}

class D {
  void fun4(no1, no2) {}
}

class Xyz implements A, B, C, D {  // use implements keyword for inherit class
  @override
  void func(no1, no2) {
    print("ans = ${no1 + no2}");
  }

  @override
  void fun2(no1, no2) {
    print("ans = ${no1 - no2}");
  }

  @override
  void fun3(no1, no2) {
    print("ans = ${no1 * no2}");
  }

  @override
  void fun4(no1, no2) {
    print("ans = ${no1 ~/ no2}");
  }
}

void main(List<String> args) {
  Xyz obj = Xyz();
  obj.func(69, 69);
  obj.fun2(69, 69);
  obj.fun3(69, 69);
  obj.fun4(69, 69);
}
