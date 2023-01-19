void main() {
  String message = "Hello";

  try {
    print("The character at the position 5 is ${message[5]}.");
  } on RangeError {
    print('The valid range for the index is [0..${message.length - 1}]');
  } catch (e) {
    print(e);
  }
  print('Bye!');
}