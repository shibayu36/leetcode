#
# @lc app=leetcode id=3 lang=ruby
#
# [3] Longest Substring Without Repeating Characters
#

# @lc code=start
# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  start = 0
  finish = 0

  longest = 0
  location = {} # char => index
  while finish < s.length
    if location.include?(s[finish]) && location[s[finish]] >= start
      current_length = finish - start
      longest = [longest, current_length].max

      start = location[s[finish]] + 1
    end

    location[s[finish]] = finish
    finish += 1
  end

  last_length = finish - start
  [longest, last_length].max
end
# @lc code=end

p(length_of_longest_substring('abcabcbb'))
p(length_of_longest_substring('pwwkew'))
p(length_of_longest_substring('abba'))
