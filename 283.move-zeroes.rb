#
# @lc app=leetcode id=283 lang=ruby
#
# [283] Move Zeroes
#

# @lc code=start
# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  zero_pos = 0
  rest_pos = 0

  while zero_pos < nums.length
    if nums[zero_pos] == 0
      rest_pos = zero_pos + 1 if rest_pos <= zero_pos

      while nums[rest_pos] == 0
        rest_pos += 1
      end

      return if rest_pos >= nums.length

      nums[zero_pos], nums[rest_pos] = nums[rest_pos], nums[zero_pos]
    end

    zero_pos += 1
  end
end
# @lc code=end

nums = [1, 0]
move_zeroes(nums)
p(nums)
