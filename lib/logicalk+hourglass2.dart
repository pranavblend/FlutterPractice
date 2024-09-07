import 'dart:io';

void main() {
  int n = 7;

  // Upper part of the hourglass
  for (int i = 0; i < n ~/ 2; i++) {
    for (int j = 0; j < i; j++) {
      stdout.write(" ");
    }
    stdout.write("*");
    for (int j = 0; j < n - 2 * i - 2; j++) {
      stdout.write(" ");
    }
    if (i != n ~/ 2) {
      stdout.write("*");
    }
    stdout.writeln();
  }


  for (int i = 0; i < n ~/ 2; i++) {
    stdout.write(" ");
  }
  stdout.writeln("*");


  for (int i = n ~/ 2 - 1; i >= 0; i--) {
    for (int j = 0; j < i; j++) {
      stdout.write(" ");
    }
    stdout.write("*");
    for (int j = 0; j < n - 2 * i - 2; j++) {
      stdout.write(" ");
    }
    if (i != n ~/ 2) {
      stdout.write("*");
    }
    stdout.writeln();
  }
}
