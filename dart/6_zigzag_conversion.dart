/*

  The string "PAYPALISHIRING" is written in a zigzag pattern on a given number of rows like this: 
  (you may want to display this pattern in a fixed font for better legibility)

  P   A   H   N
  A P L S I I G
  Y   I   R
  And then read line by line: "PAHNAPLSIIGYIR"

  Write the code that will take a string and make this conversion given a number of rows:

  string convert(string s, int numRows);


  Example 1:

  Input: s = "PAYPALISHIRING", numRows = 3
  Output: "PAHNAPLSIIGYIR"

  Example 2:

  Input: s = "PAYPALISHIRING", numRows = 4
  Output: "PINALSIGYAHRPI"
  Explanation:
  P     I    N
  A   L S  I G
  Y A   H R
  P     I

  Example 3:

  Input: s = "A", numRows = 1
  Output: "A"


  Constraints:

  1 <= s.length <= 1000
  s consists of English letters (lower-case and upper-case), ',' and '.'.
  1 <= numRows <= 1000

*/

/// @author : Ali Haider @alihaider78222

/// Run this file using command "dart dart/6_zigzag_conversion.dart.dart" in terminal

// ✅
void main() {
  String s = 'AB';
  // String s = 'PAY';
  int numRows = 1;
  var res = convert(s, numRows);
  print(res.toString());
}

String convert(String s, int numRows) {
  /// edge cases
  if (s.length <= numRows) {
    return s;
  }

  // creates array with given number of rows
  var rows = List<dynamic>.filled(numRows, '');

  int cursor = 0;
  bool moveCursorForward = true;

  for (String char in s.split('')) {
    rows[cursor] += char; // array concatenation

    if (cursor >= numRows - 1) {
      moveCursorForward = false;
    } else if (cursor <= 0) {
      moveCursorForward = true;
    } else {
      moveCursorForward = false;
    }

    /// (numRows == 1) ? 0   =>   this check is added to handle test case when only 1 numRows are given and
    /// moveCursorForward is assigned negative value, so it will handle that check

    cursor = cursor + ((numRows == 1) ? 0 : (moveCursorForward ? 1 : -1));
  }

  return rows.join('');
}
