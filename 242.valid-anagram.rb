#
# @lc app=leetcode id=242 lang=ruby
#
# [242] Valid Anagram
#

# @lc code=start
# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  char_to_count = s.chars.tally

  t.chars.each do |c|
    return false unless char_to_count[c] && char_to_count[c] > 0

    char_to_count[c] -= 1
  end

  char_to_count.values.all? { |v| v == 0 }
end
# @lc code=end

puts(is_anagram('anagram', 'nagaram'))
puts(is_anagram('rat', 'car'))
