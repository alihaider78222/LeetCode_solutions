/*

  Given a string s, return the longest palindromic substring in s.


  Example 1:

  Input: s = "babad"
  Output: "bab"
  Explanation: "aba" is also a valid answer.

  Example 2:

  Input: s = "cbbd"
  Output: "bb"


  Constraints:

  1 <= s.length <= 1000
  s consist of only digits and English letters.

*/

/// @author : Ali Haider @alihaider78222

void main() {
  String s = 'babad';
  var res = longestPalindrome(s);
  print(res.toString());
}

String longestPalindrome(String s) {
  if (s == '' || s.length < 2) {
    return s;
  }

  var longestPalindrome = s.substring(0, 1);

  for (int i = 0; i < s.length; i++) {
    ///
    /// Run time approximation 350ms
    ///
    [expand(s, i, i), expand(s, i, i + 1)].forEach((maybeLongest) => {
          if (maybeLongest.length > longestPalindrome.length)
            {longestPalindrome = maybeLongest}
        });

    ///------------------------ OR -----------------------------------
    /// Run time approximation 460ms
    ///
    // var result1 = expand(s, i, i);
    // var result2 = expand(s, i, i + 1);

    // if (result1.length > longestPalindrome.length) {
    //   longestPalindrome = result1;
    // }
    // if (result2.length > longestPalindrome.length) {
    //   longestPalindrome = result2;
    // }
  }

  return longestPalindrome;
}

String expand(String s, int begin, int end) {
  while (begin >= 0 && end <= s.length - 1 && s[begin] == s[end]) {
    begin--;
    end++;
  }

  return s.substring(begin + 1, end);
}
