/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {}
}

void main() {
  final sl = Solution();

  var l1 = ListNode(1);
  var l2 = ListNode(1);
  print('Result: ${sl.addTwoNumbers(l1, l2)}');
}
