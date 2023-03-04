#
# @lc app=leetcode id=844 lang=ruby
#
# [844] Backspace String Compare
#

# @lc code=start
# @param {String} s
# @param {String} t
# @return {Boolean}
def backspace_compare(s, t)
  s_res = ''
  s.chars.each do |c|
    if c == '#'
      s_res.chop!
    else
      s_res += c
    end
  end

  t_res = ''
  t.chars.each do |c|
    if c == '#'
      t_res.chop!
    else
      t_res += c
    end
  end

  s_res == t_res
end
# @lc code=end
