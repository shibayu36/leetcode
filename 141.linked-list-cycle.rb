#
# @lc app=leetcode id=141 lang=ruby
#
# [141] Linked List Cycle
#

# @lc code=start
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
  fast = slow = head

  while fast && fast.next
    fast = fast.next.next
    slow = slow.next

    return true if fast == slow
  end

  false
end
# @lc code=end
