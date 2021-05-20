/*
 * @lc app=leetcode id=21 lang=typescript
 *
 * [21] Merge Two Sorted Lists
 */

// @lc code=start
/**
 * Definition for singly-linked list.
 * class ListNode {
 *     val: number
 *     next: ListNode | null
 *     constructor(val?: number, next?: ListNode | null) {
 *         this.val = (val===undefined ? 0 : val)
 *         this.next = (next===undefined ? null : next)
 *     }
 * }
 */

function mergeTwoLists(l1: ListNode | null, l2: ListNode | null): ListNode | null {
  const result = new ListNode(undefined, null);

  let resultNode: ListNode = result;
  let l1Node = l1;
  let l2Node = l2;
  while (l1Node !== null || l2Node !== null) {
    if (l1Node === null) {
      const node = new ListNode(l2Node!.val);
      resultNode.next = node;
      l2Node = l2Node!.next;
      resultNode = node;
    } else if (l2Node === null) {
      const node = new ListNode(l1Node!.val);
      resultNode.next = node;
      l1Node = l1Node!.next;
      resultNode = node;
    } else {
      if (l1Node.val <= l2Node.val) {
        resultNode.next = new ListNode(l1Node.val);
        l1Node = l1Node.next;
        resultNode = resultNode.next;
      } else {
        resultNode.next = new ListNode(l2Node.val);
        l2Node = l2Node.next;
        resultNode = resultNode.next;
      }
    }
  }

  return result.next;
}
// @lc code=end
