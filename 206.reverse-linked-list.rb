#
# @lc app=leetcode id=206 lang=ruby
#
# [206] Reverse Linked List
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
def reverse_list(head)
  return head unless head

  current = head
  next_ = head.next
  current.next = nil
  while next_
    next_next = next_.next

    next_.next = current

    current = next_
    next_ = next_next
  end

  current
end
# @lc code=end
