/*

  You are given two non-empty linked lists representing two non-negative integers. The digits are 
  stored in reverse order, and each of their nodes contains a single digit. Add the two numbers and 
  return the sum as a linked list.

  You may assume the two numbers do not contain any leading zero, except the number 0 itself


  Example 1:

  Input: l1 = [2,4,3], l2 = [5,6,4]
  Output: [7,0,8]
  Explanation: 342 + 465 = 807.


  Example 2:

  Input: l1 = [0], l2 = [0]
  Output: [0]


  Example 3:

  Input: l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]
  Output: [8,9,9,9,0,0,0,1]


  Constraints:

  The number of nodes in each linked list is in the range [1, 100].
  0 <= Node.val <= 9
  It is guaranteed that the list represents a number that does not have leading zeros.

*/

/// Run this file using command "dart dart/2_add_two_numbers.dart" in terminal

void main() {
  ListNode l1 = ListNode(2, ListNode(4, ListNode(3, null)));
  ListNode l2 = ListNode(5, ListNode(6, ListNode(4, null)));
  var res = addTwoNumbers(l1, l2);
  print(res.toString());
}

class ListNode<T> {
  int val;
  ListNode? next;
  ListNode(this.val, this.next);

  @override
  String toString() {
    if (next == null) return '$val';
    return '$val -> ${next.toString()}';
  }
}

ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
  ListNode? result = ListNode(0, null);
  ListNode? current = result;
  int carry = 0;

  while (l1 != null || l2 != null || carry != 0) {
    var l1val = l1?.val ?? 0;
    var l2val = l2?.val ?? 0;

    var columnSum = l1val + l2val + carry;
    carry = columnSum ~/ 10;

    var newNode = ListNode(columnSum % 10, null);
    current?.next = newNode;
    current = newNode;

    l1 = l1?.next;
    l2 = l2?.next;
  }

  return result.next;
}
