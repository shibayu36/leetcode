#
# @lc app=leetcode id=28 lang=ruby
#
# [28] Find the Index of the First Occurrence in a String
#

# @lc code=start
# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
  return -1 if haystack.length < needle.length

  (0..haystack.length - needle.length).each do |i|
    if haystack[i..i + needle.length - 1] == needle
      return i
    end
  end

  -1
end
# @lc code=end
