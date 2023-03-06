#
# @lc app=leetcode id=338 lang=ruby
#
# [338] Counting Bits
#

# @lc code=start
# @param {Integer} n
# @return {Integer[]}
def count_bits(n)
  return [0] if n == 0

  dp = [0, 1]
  (2..n).map do |i|
    if i.even?
      dp[i] = dp[i / 2]
    else
      dp[i] = dp[i / 2] + 1
    end
  end
  dp
end
# @lc code=end

# def count_bits(n)
#   (0..n).map do |i|
#     i.to_s(2).count('1')
#   end
# end
