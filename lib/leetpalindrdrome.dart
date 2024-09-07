void main() {
  int num = 121;
  String temp = num.toString();
  var list = temp.split("");
  print(list);

  bool palindrome = true;


  for (int i = 0; i < list.length / 2; i++) {
    if (list[i] != list[list.length - i - 1]) {
      palindrome = false;
      break;
    }
  }

  if (palindrome) {
    print("The number is a Palindrome");
  } else {
    print("The number is not a Palindrome");
  }
}
