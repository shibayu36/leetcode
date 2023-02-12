#
# @lc app=leetcode id=226 lang=ruby
#
# [226] Invert Binary Tree
#

# @lc code=start
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {TreeNode}
def invert_tree(root)
  return root unless root
  return root if root.left.nil? && root.right.nil?

  left = invert_tree(root.left)
  right = invert_tree(root.right)
  root.left = right
  root.right = left

  root
end
# @lc code=end
