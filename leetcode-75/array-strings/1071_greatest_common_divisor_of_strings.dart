/*

  For two strings s and t, we say "t divides s" if and only if s = t + ... + t (i.e., t is concatenated with itself one or more times).

  Given two strings str1 and str2, return the largest string x such that x divides both str1 and str2.

  Example 1:
  Input: str1 = "ABCABC", str2 = "ABC"
  Output: "ABC"

  Example 2:
  Input: str1 = "ABABAB", str2 = "ABAB"
  Output: "AB"

  Example 3:
  Input: str1 = "LEET", str2 = "CODE"
  Output: ""

  Constraints:
  1 <= str1.length, str2.length <= 1000
  str1 and str2 consist of English uppercase letters.

*/

/// @author : Ali Haider @alihaider78222

void main() {
  String str1 = 'ABABAB';
  String str2 = 'ABAB';

  var resp = gcdOfStrings(str1, str2);
  print(resp.toString());
}

String gcdOfStrings(String str1, String str2) {
  if (str1.length == str2.length) return '';
  return str1.replaceFirst(str2, '');
}