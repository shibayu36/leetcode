#
# @lc app=leetcode id=338 lang=ruby
#
# [338] Counting Bits
#

# @lc code=start
# @param {Integer} n
# @return {Integer[]}
def count_bits(n)
  (0..n).map do |i|
    i.to_s(2).count('1')
  end
end
# @lc code=end
