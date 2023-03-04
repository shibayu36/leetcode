#
# @lc app=leetcode id=876 lang=ruby
#
# [876] Middle of the Linked List
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
# @param {ListNode} head
# @return {ListNode}
def middle_node(head)
  fast = head
  slow = head

  while fast&.next
    slow = slow.next
    fast = fast.next.next
  end

  slow
end
# @lc code=end
