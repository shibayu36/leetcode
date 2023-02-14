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
  dp[-1] = 0

  (0..amount).reverse_each do |i|
    coins.each do |coin|
      next if i < coin

      dp[i - coin] = [dp[i - coin], dp[i] + 1].min
    end
  end

  dp[0] == 100_000 ? -1 : dp[0]
end
# @lc code=end

puts(coin_change([1, 2, 5], 11))
