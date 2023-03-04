#
# @lc app=leetcode id=217 lang=ruby
#
# [217] Contains Duplicate
#

require 'set'

# @lc code=start
# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  set = Set.new
  nums.each do |num|
    return true if set.include?(num)

    set.add(num)
  end
  false
end
# @lc code=end
