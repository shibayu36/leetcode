#
# @lc app=leetcode id=278 lang=ruby
#
# [278] First Bad Version
#

# @lc code=start
# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

# @param {Integer} n
# @return {Integer}
def first_bad_version(n)
  left = 1
  right = n

  while left < right
    middle = (left + right) / 2
    if is_bad_version(middle)
      right = middle
    else
      left = middle + 1
    end
  end

  left
end
# @lc code=end
