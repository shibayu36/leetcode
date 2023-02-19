#
# @lc app=leetcode id=416 lang=ruby
#
# [416] Partition Equal Subset Sum
#

# @lc code=start
# @param {Integer[]} nums
# @return {Boolean}
def can_partition(nums)
  sum = nums.sum
  return false if sum.odd?

  target = sum / 2
  # dp[i][diff] means whether the sum of the first i numbers can be diff
  dp = Array.new(nums.size + 1) { Array.new(target + 1) }

  dp[0][0] = true

  # dp[i][diff] =
  # dp[i - 1][diff - nums[i]] (pick case) || dp[i - 1][diff] (not pick case)
  (1..nums.size).each do |i|
    (0..target).each do |diff|
      dp[i][diff] = dp[i - 1][diff]
      if diff >= nums[i - 1]
        dp[i][diff] = dp[i][diff] || dp[i - 1][diff - nums[i - 1]]
      end
      return true if dp[i][target]
    end
  end

  dp[nums.size][target] || false
end
# @lc code=end
p(can_partition([]))
p(can_partition([1]))
p(can_partition([1, 5, 11, 5]))
p(can_partition([1, 2, 3, 5]))
p(can_partition([100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100,
                 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 99, 97]))
