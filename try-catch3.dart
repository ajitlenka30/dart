void main() {
  String message = "Hello";
  try {
    print("The character at the position 5 is ${message[5]}.");
  } on RangeError catch (e) {
    print(e);
  } catch (e) {
    print(e);
  }
  print('Bye!');
}