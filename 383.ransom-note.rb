#
# @lc app=leetcode id=383 lang=ruby
#
# [383] Ransom Note
#

# @lc code=start
# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
  bullets = Hash.new(0)
  magazine.chars.each do |c|
    bullets[c] += 1
  end

  ransom_note.chars.each do |c|
    if bullets[c] == 0
      return false
    else
      bullets[c] -= 1
    end
  end

  true
end
# @lc code=end
