/*

  Given a string s, find the length of the longest substring without repeating characters.

  Example 1:

  Input: s = "abcabcbb"
  Output: 3
  Explanation: The answer is "abc", with the length of 3.

  Example 2:

  Input: s = "bbbbb"
  Output: 1
  Explanation: The answer is "b", with the length of 1.

  Example 3:

  Input: s = "pwwkew"
  Output: 3
  Explanation: The answer is "wke", with the length of 3.
  Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.


  Constraints:

  0 <= s.length <= 5 * 104
  s consists of English letters, digits, symbols and spaces.

*/

/// Run this file using command "dart dart/3_longest_substring_without_repeating_characters.dart" in terminal

import 'dart:math';
import 'dart:collection';

void main() {
  String s = 'pwwkew';
  var res = lengthOfLongestSubstring(s);
  print(res.toString());
}

/// Time complexity for Retrieving a data
/// HashMap worst 0(n)
/// Map worst 0(1)

/// Time complexity for Inserting a data
/// HashMap worst 0(1)
/// Map worst 0(n)

/// So in this case we shall use HashMap for Inserting items quickly

int lengthOfLongestSubstring(String s) {
  HashMap<String, int> indexMap = HashMap<String, int>();
  int res = 0, j = -1;

  for (int i = 0; i < s.length; i++) {
    if (indexMap.containsKey(s[i])) {
      j = max(j, indexMap[s[i]]!);
    }
    indexMap[s[i]] = i;
    res = max(res, i - j);
  }

  print(indexMap);
  return res;
}
