#
# @lc app=leetcode id=53 lang=ruby
#
# [53] Maximum Subarray
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  max_sum = -10_001

  current_sum = 0
  (0..nums.size - 1).each do |i|
    current_sum += nums[i]
    max_sum = [max_sum, current_sum].max
    current_sum = 0 if current_sum < 0
  end

  max_sum
end
# def max_sub_array(nums)
#   max_sum = -10_001
#   (0..nums.size - 1).each do |i|
#     current_sum = 0
#     (i..nums.size - 1).each do |j|
#       current_sum += nums[j]
#       max_sum = [max_sum, current_sum].max
#     end
#   end
#   max_sum
# end
# @lc code=end

puts(max_sub_array([-2, 1, -3, 4, -1, 2, 1, -5, 4]))
puts(max_sub_array([-1, 5, -1, -2, 4, -3, 2, -1]))
puts(max_sub_array([-1, -1, -1]))
