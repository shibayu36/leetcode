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
  l_s = construct(s)
  l_t = construct(t)

  return false if l_s != l_t
  return true if l_s == 0

  s[0..l_s - 1] == t[0..l_t - 1]
end

def construct(string)
  read = write = 0

  while read < string.length
    c = string[read]
    if c == '#'
      write -= 1 if write > 0
    else
      string[write] = c
      write += 1
    end

    read += 1
  end

  write
end
# @lc code=end

p(backspace_compare('ab##', 'c#d#'))
p(backspace_compare('y#fo##f', 'y#f#o##f'))

# def backspace_compare(s, t)
#   construct = lambda do |string|
#     res = ''
#     string.chars.each do |c|
#       if c == '#'
#         res.chop!
#       else
#         res += c
#       end
#     end
#     res
#   end

#   construct.call(s) == construct.call(t)
# end

# def backspace_compare(s, t)
#   s_res = ''
#   s.chars.each do |c|
#     if c == '#'
#       s_res.chop!
#     else
#       s_res += c
#     end
#   end

#   t_res = ''
#   t.chars.each do |c|
#     if c == '#'
#       t_res.chop!
#     else
#       t_res += c
#     end
#   end

#   s_res == t_res
# end
