import 'dart:math';

import 'dart:math';

void main() {
  int number = 27;
  bool isPowerOfThree = false;

  for (int i = 0;; i++) {
    var powerOfThree = pow(3, i);
    if (powerOfThree == number) {
      isPowerOfThree = true;
      break;
    } else if (powerOfThree > number) {
      isPowerOfThree = false;
      break;
    }
  }

  print(isPowerOfThree);
}
