#
# @lc app=leetcode id=21 lang=ruby
#
# [21] Merge Two Sorted Lists
#

# @lc code=start
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
  return list1 unless list2
  return list2 unless list1

  if list1.val > list2.val
    list2.next = merge_two_lists(list1, list2.next)
    list2
  else
    list1.next = merge_two_lists(list1.next, list2)
    list1
  end
end
# @lc code=end
