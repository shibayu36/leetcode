/*
 * @lc app=leetcode id=235 lang=golang
 *
 * [235] Lowest Common Ancestor of a Binary Search Tree
 */

package main

// @lc code=start
/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val   int
 *     Left  *TreeNode
 *     Right *TreeNode
 * }
 */

func lowestCommonAncestor(root, p, q *TreeNode) *TreeNode {
	if p.Val < root.Val && q.Val < root.Val {
		return lowestCommonAncestor(root.Left, p, q)
	} else if p.Val > root.Val && q.Val > root.Val {
		return lowestCommonAncestor(root.Right, p, q)
	}

	return root
}

// func lowestCommonAncestor(root, p, q *TreeNode) *TreeNode {
// 	if root.Val == p.Val {
// 		return p
// 	}
// 	if root.Val == q.Val {
// 		return q
// 	}

// 	if root.Val < p.Val && root.Val > q.Val {
// 		return root
// 	}
// 	if root.Val > p.Val && root.Val < q.Val {
// 		return root
// 	}

// 	if root.Val < p.Val {
// 		return lowestCommonAncestor(root.Right, p, q)
// 	} else {
// 		return lowestCommonAncestor(root.Left, p, q)
// 	}
// }

// @lc code=end
