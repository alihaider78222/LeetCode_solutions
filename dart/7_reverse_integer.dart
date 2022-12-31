/*

  Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.

  Assume the environment does not allow you to store 64-bit integers (signed or unsigned).


  Example 1:

  Input: x = 123
  Output: 321

  Example 2:

  Input: x = -123
  Output: -321

  Example 3:

  Input: x = 120
  Output: 21


  Constraints:

  -231 <= x <= 231 - 1

*/

/// @author : Ali Haider @alihaider78222

import "dart:math";

void main() {
  // int x = 1534236469;
  int x = -123;

  var res = reverse(x);
  print(res.toString());
}

int reverse(int x) {
  bool isNegative = x.isNegative; // or bool isNegative = x < 0;

  List<String> numbers = x.abs().toString().split('');

  var result = (int.parse(numbers.reversed.join())).abs();

  num maxConstraints = pow(2, 31) - 1;
  num minConstraints = pow(-2, 31);

  if (result < minConstraints || result > maxConstraints) {
    return 0;
  }

  if (isNegative) {
    return -result;
  }

  return result;
}
