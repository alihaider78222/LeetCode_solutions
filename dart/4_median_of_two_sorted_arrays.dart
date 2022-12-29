/*

  Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.

  The overall run time complexity should be O(log (m+n)).


  Example 1:

  Input: nums1 = [1,3], nums2 = [2]
  Output: 2.00000
  Explanation: merged array = [1,2,3] and median is 2.

  Example 2:

  Input: nums1 = [1,2], nums2 = [3,4]
  Output: 2.50000
  Explanation: merged array = [1,2,3,4] and median is (2 + 3) / 2 = 2.5.


  Constraints:

  nums1.length == m
  nums2.length == n
  0 <= m <= 1000
  0 <= n <= 1000
  1 <= m + n <= 2000
  -106 <= nums1[i], nums2[i] <= 106

*/

/// Run this file using command "dart dart/4_median_of_two_sorted_arrays.dart" in terminal

void main() {
  List<int> nums1 = [1, 2];
  List<int> nums2 = [3, 4];
  var res = findMedianSortedArrays(nums1, nums2);
  print(res.toString());
}

///  Solution 1
double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
  List<int> nums = [...nums1, ...nums2];
  nums.sort();

  var res = (nums.length / 2).truncate();

  if (nums.length % 2 == 1) {
    return nums[res].toDouble();
  } else {
    return ((nums[res] + nums[res - 1]) / 2).toDouble();
  }
}

///  Solution 2
double findMedianSortedArrays2(List<int> nums1, List<int> nums2) {
  List<int> nums = [...nums1, ...nums2];
  nums.sort(
    (a, b) => a.compareTo(b),
  );

  var sum = nums.reduce((a, b) => a + b).ceilToDouble();
  // var sum = nums.fold(0, (p, c) => p + c).ceilToDouble();

  return sum / nums.length;
}
