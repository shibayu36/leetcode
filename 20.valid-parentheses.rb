#
# @lc app=leetcode id=20 lang=ruby
#
# [20] Valid Parentheses
#

# @lc code=start
# @param {String} s
# @return {Boolean}
PAIRS = {
  '(' => ')',
  '{' => '}',
  '[' => ']'
}

def is_valid(s)
  stack = []
  s.chars.each do |c|
    case c
    when '(', '[', '{'
      stack.push(c)
    when ')', ']', '}'
      compared_char = stack.pop
      return false if PAIRS[compared_char] != c
    end
  end

  stack.empty?
end
# @lc code=end

puts(is_valid('()[]{}'))
puts(is_valid('([)]'))
