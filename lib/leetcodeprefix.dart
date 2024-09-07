String longestCommonPrefix(List<String> strs) {
  if (strs.isEmpty) {
    return "";
  }
  String prefix = strs[0];

  for (int i = 1; i < strs.length; i++) {

    while (strs[i].indexOf(prefix) != 0) {

      prefix = prefix.substring(0, prefix.length - 1);
      if (prefix.isEmpty) {
        return "No repeating Prefix";
      }
    }
  }

  return prefix;
}

void main() {
  List<String> strs1 = ["flower", "flow", "flight"];
  List<String> strs2 = ["dog", "racecar", "car"];
  List<String> strs3 = ["interstellar", "internet", "internal"];

  print(longestCommonPrefix(strs1));
  print(longestCommonPrefix(strs2));
  print(longestCommonPrefix(strs3));
}