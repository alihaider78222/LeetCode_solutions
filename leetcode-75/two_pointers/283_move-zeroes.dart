/*

  Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.

  Note that you must do this in-place without making a copy of the array.


  Example 1:
  Input: nums = [0,1,0,3,12]
  Output: [1,3,12,0,0]

  Example 2:
  Input: nums = [0]
  Output: [0]

  Constraints:
  1 <= nums.length <= 104
  -231 <= nums[i] <= 231 - 1

  Follow up: Could you minimize the total number of operations done?

*/

/// @author : Ali Haider @alihaider78222

void main() {
  List<int> nums = [5, 0, 1, 0, 3, 12];

  moveZeroes(nums);
}

void moveZeroes(List<int> nums) {
  int nonZeroIndex = 0;

  // with two pointers
  for (var i = 0; i < nums.length; i++) {
    if (nums[i] != 0) {
      var temp = nums[i];
      nums[i] = nums[nonZeroIndex];
      nums[nonZeroIndex] = temp;

      nonZeroIndex++;
    }

    print('pointer $nonZeroIndex');
    print(nums);
  }

  //
  // using do while loop without pointers
  //
  // var k = nums.length - 1;

  // while (k >= 0) {
  //   if (nums[k] == 0) {
  //     nums.removeAt(k);
  //     nums.add(0);
  //   }
  //   k--;
  // }

  print('');
  print(nums);
}
