/*

  Given an array of integers nums and an integer target, return indices of the two numbers such that they add 
  up to target.

  You may assume that each input would have exactly one solution, and you may not use the same element twice.

  You can return the answer in any order.


  Example 1:

  Input: nums = [2,7,11,15], target = 9
  Output: [0,1]
  Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].

  Example 2:

  Input: nums = [3,2,4], target = 6
  Output: [1,2]

  Example 3:

  Input: nums = [3,3], target = 6
  Output: [0,1]


  Constraints:

  2 <= nums.length <= 104
  -109 <= nums[i] <= 109
  -109 <= target <= 109
  Only one valid answer exists.


  Follow-up: Can you come up with an algorithm that is less than O(n2) time complexity?

*/

/// @author : Ali Haider @alihaider78222

void main() {
  List<int> nums = [2, 7, 11, 15];
  int target = 9;
  var res = twoSum(nums, target);
  print(res);
}

List<int> twoSum(List<int> nums, int target) {
  // Create a map to store the indices of the elements
  Map<int, int> indices = {};

  // Iterate through the list of numbers
  for (int i = 0; i < nums.length; i++) {
    int num = nums[i];
    int complement = target - num;

    // Check if the complement exists in the map
    if (indices.containsKey(complement)) {
      // If it does, return the indices of the complement and the current number
      return [indices[complement]!, i];
    }

    // Otherwise, add the current number and its index to the map
    indices[num] = i;
  }

  // If we reach this point, it means there is no solution
  return [];
}
