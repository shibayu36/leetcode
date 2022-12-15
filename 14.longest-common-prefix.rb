#
# @lc app=leetcode id=14 lang=ruby
#
# [14] Longest Common Prefix
#

# @lc code=start
# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
  result = ''

  strs[0].chars.each_with_index do |c, i|
    strs[1..].each do |str|
      return result unless str[i] == c
    end
    result += c
  end

  result
end
# @lc code=end
