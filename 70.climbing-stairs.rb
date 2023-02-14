#
# @lc app=leetcode id=70 lang=ruby
#
# [70] Climbing Stairs
#

# @lc code=start
# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  dp = Array.new(n, nil)
  dp[0] = 1
  dp[1] = 2

  (2..n - 1).each do |i|
    dp[i] = dp[i - 1] + dp[i - 2]
  end

  dp[n - 1]
end
# @lc code=end
