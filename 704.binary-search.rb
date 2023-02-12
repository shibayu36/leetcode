#
# @lc app=leetcode id=704 lang=ruby
#
# [704] Binary Search
#

# @lc code=start
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  l = 0
  r = nums.size - 1
  while l <= r
    mid = (l + r) / 2

    if nums[mid] < target
      l = mid + 1
    elsif nums[mid] > target
      r = mid - 1
    else
      return mid
    end
  end

  -1
end
# @lc code=end

puts(search([-1, 0, 3, 5, 9, 12], 9))
puts(search([-1, 0, 3, 5, 9, 12], 2))
