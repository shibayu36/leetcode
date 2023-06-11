/*
 * @lc app=leetcode id=21 lang=golang
 *
 * [21] Merge Two Sorted Lists
 */

package main

// @lc code=start
/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func mergeTwoLists(list1 *ListNode, list2 *ListNode) *ListNode {
	root := &ListNode{}
	current := root

	for {
		if list1 == nil && list2 == nil {
			break
		}

		if list1 == nil {
			current.Next = list2
			list2 = list2.Next
		} else if list2 == nil {
			current.Next = list1
			list1 = list1.Next
		} else if list1.Val < list2.Val {
			current.Next = list1
			list1 = list1.Next
		} else {
			current.Next = list2
			list2 = list2.Next
		}

		current = current.Next
	}

	return root.Next

}

// @lc code=end

type ListNode struct {
	Val  int
	Next *ListNode
}
