#
# @lc app=leetcode id=15 lang=ruby
#
# [15] 3Sum
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer[][]}
require 'set'
def three_sum(nums)
  # Cannot solve because of time limit
  hash = Hash.new(0)
  nums.each do |num|
    hash[num] += 1
  end

  res = Set.new
  keys = hash.keys
  keys.each do |key1|
    hash[key1] -= 1

    keys.each do |key2|
      next if hash[key2] == 0

      hash[key2] -= 1

      two_sum = key1 + key2

      if hash[-two_sum] && hash[-two_sum] > 0
        res.add([key1, key2, -two_sum].sort)
      end

      hash[key2] += 1
    end

    hash[key1] += 1
  end

  res.to_a
end
# @lc code=end

p(three_sum([-1, 0, 1, 2, -1, -4]))
