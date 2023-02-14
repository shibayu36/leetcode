#
# @lc app=leetcode id=322 lang=ruby
#
# [322] Coin Change
#

# @lc code=start
# @param {Integer[]} coins
# @param {Integer} amount
# @return {Integer}
def coin_change(coins, amount)
  dp = Array.new(amount + 1, 100_000)
  dp[0] = 0

  (1..amount).each do |i|
    coins.each do |coin|
      next if i < coin

      dp[i] = [dp[i], dp[i - coin] + 1].min
    end
  end

  dp[amount] == 100_000 ? -1 : dp[amount]
end
# @lc code=end

puts(coin_change([1, 2, 5], 11))
