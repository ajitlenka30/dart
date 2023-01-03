class Abc {
  Abc(a, b) {
    print("ans = ${a + b}");
    print("construcator with perameter");
  }
  Abc.anc2() {
    print("hey this is construcator with name type");
  }
}

void main(List<String> args) {
  Abc(10, 20);
  Abc.anc2();
}
