#
# @lc app=leetcode id=169 lang=ruby
#
# [169] Majority Element
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  hash = Hash.new(0)
  nums.each do |num|
    hash[num] += 1
  end
  hash.keys.max_by { |k| hash[k] }
end
# @lc code=end
