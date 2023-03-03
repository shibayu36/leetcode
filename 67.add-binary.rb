#
# @lc app=leetcode id=67 lang=ruby
#
# [67] Add Binary
#

# @lc code=start
# @param {String} a
# @param {String} b
# @return {String}
def add_binary(a, b)
  ar = a.reverse
  br = b.reverse

  res = ''
  carry = 0
  limit = [ar.length, br.length].max
  (0..limit - 1).each do |i|
    ac = ar[i] || 0
    bc = br[i] || 0

    sum = carry + ac.to_i + bc.to_i
    carry = sum >= 2 ? 1 : 0
    res += (sum % 2).odd? ? '1' : '0'
  end

  res += '1' if carry == 1

  res.reverse
end
# @lc code=end
