#
# @lc app=leetcode id=46 lang=ruby
#
# [46] Permutations
#

# @lc code=start
# @param {Integer[]} nums
# @return {Integer[][]}
def permute(nums)
  return [nums] if nums.size <= 1

  result = []
  nums.each_with_index do |num, index|
    rest = nums.dup
    rest.delete_at(index)
    permute(rest).each do |perm|
      result << ([num] + perm)
    end
  end

  result
end
# @lc code=end

p(permute([1]))
p(permute([1, 2]))
p(permute([1, 2, 3]))
