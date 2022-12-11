#
# @lc app=leetcode id=1 lang=ruby
#
# [1] Two Sum
#

# @lc code=start
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  num2index = {}
  nums.each_with_index do |num, index|
    index2 = num2index[target - num]
    return [index, index2] if index2

    num2index[num] = index
  end
end
# def two_sum(nums, target)
#   num2index = nums.map.with_index { |num, index| [num, index] }.to_h

#   nums.each_with_index do |num, index|
#     another = target - num
#     if (index2 = num2index[another]) && (index != index2)
#       return [index, index2]
#     end
#   end
# end
# @lc code=end
