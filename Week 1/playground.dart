import 'dart:io';

main() {
  stdout.writeln('What is your name?');
  var name = stdin.readLineSync();
  print('My name is $name');

  int a = 3;
  var b = 4;
  print(a + b);

  print("\n\n");

  double amount = 20.1;
  var c = 3.14;

  print("Double = $amount , Variable = $c");

  print("\n\n");
}
