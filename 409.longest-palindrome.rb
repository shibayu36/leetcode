#
# @lc app=leetcode id=409 lang=ruby
#
# [409] Longest Palindrome
#

require 'set'
# @lc code=start
# @param {String} s
# @return {Integer}
def longest_palindrome(s)
  set = Set.new
  longest = 0
  s.chars.each do |c|
    if set.include?(c)
      longest += 2
      set.delete(c)
    else
      set.add(c)
    end
  end

  if set.size > 0
    longest += 1
  end

  longest
end
# @lc code=end
