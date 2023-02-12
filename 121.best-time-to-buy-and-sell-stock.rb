#
# @lc app=leetcode id=121 lang=ruby
#
# [121] Best Time to Buy and Sell Stock
#

# @lc code=start
# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  # At first, O(N^2) solution
  size = prices.size
  max_price = 0
  (0..size - 1).each do |start_index|
    (start_index + 1..size - 1).each do |end_index|
      if prices[end_index] - prices[start_index] > max_price
        max_price = prices[end_index] - prices[start_index]
      end
    end
  end

  max_price
end
# @lc code=end
