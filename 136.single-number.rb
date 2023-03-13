#
# @lc app=leetcode id=136 lang=ruby
#
# [136] Single Number
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
require 'set'
def single_number(nums)
  set = Set.new
  nums.each do |num|
    if set.include?(num)
      set.delete(num)
    else
      set.add(num)
    end
  end

  set.to_a[0]
end
# @lc code=end
