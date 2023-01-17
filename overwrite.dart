import 'dart:io';

void main(List<String> args) {
  Xyz obj = Xyz();
  obj.func();   // here it will check child class, not in the parent class itself
}

class Abc {
  func() {
    print("hello");       // second check here
  }
}

class Xyz extends Abc {
  func() {
    print("dead");   // first check here
  }
}

/*
Method overriding occurs in dart when a child class tries to override the parent class’s method. When a child class extends a parent class, it gets full access to the methods of the parent class and thus it overrides the methods of the parent class. It is achieved by re-defining the same method present in the parent class.
This method is helpful when you have to perform different functions for a different child class, so we can simply re-define the content by overriding it.

Important Points:-

1. A method can be overridden only in the child class, not in the parent class itself.
2. Both the methods defined in the child and the parent class should be the exact copy, from name to argument list except the content present inside the method i.e. it can and can’t be the same.
   A method declared final or static inside the parent class can’t be overridden by the child class.
3. Constructors of the parent class can’t be inherited, so they can’t be overridden by the child class.
*/