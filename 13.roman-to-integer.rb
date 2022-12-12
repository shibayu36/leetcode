#
# @lc app=leetcode id=13 lang=ruby
#
# [13] Roman to Integer
#

# @lc code=start
# @param {String} s
# @return {Integer}
def roman_to_int(s)
  roman2num = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }

  answer = 0
  prev = 0
  s.split('').reverse.each do |roman|
    if prev > roman2num[roman]
      answer -= roman2num[roman]
    else
      answer += roman2num[roman]
    end
    prev = roman2num[roman]
  end

  answer
end
# def roman_to_int(s)
#   roman2num = {
#     'I' => 1,
#     'V' => 5,
#     'X' => 10,
#     'L' => 50,
#     'C' => 100,
#     'D' => 500,
#     'M' => 1000,
#     'IV' => 4,
#     'IX' => 9,
#     'XL' => 40,
#     'XC' => 90,
#     'CD' => 400,
#     'CM' => 900
#   }

#   result = 0
#   index = 0
#   romans = s.chars
#   while index < romans.length
#     if num = roman2num[romans.slice(index, 2).join]
#       result += num
#       index += 2
#     else
#       result += roman2num[romans[index]]
#       index += 1
#     end
#   end

#   result
# end
# @lc code=end
