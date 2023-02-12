#
# @lc app=leetcode id=125 lang=ruby
#
# [125] Valid Palindrome
#

# @lc code=start
# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  s = s.downcase.gsub(/[^a-z0-9]/, '').downcase
  left = 0
  right = s.size - 1

  chars = s.chars
  while left < right
    if chars[left] != chars[right]
      return false
    end

    left += 1
    right -= 1
  end

  true
end
# @lc code=end

puts(is_palindrome('A man, a plan, a canal: Panama'))
puts(is_palindrome('race a car'))
puts(is_palindrome(' '))
