/*
 * @lc app=leetcode id=121 lang=golang
 *
 * [121] Best Time to Buy and Sell Stock
 */
package main

// @lc code=start
func maxProfit(prices []int) int {
	minPrice := 100000
	maxProfit := 0

	for _, price := range prices {
		if price < minPrice {
			minPrice = price
			continue
		}

		profit := price - minPrice
		if profit > maxProfit {
			maxProfit = profit
		}
	}

	return maxProfit
}

// func maxProfit(prices []int) int {
// 	minPrice := 100000
// 	maxProfit := 0

// 	for i := 1; i <= len(prices); i++ {
// 		price := prices[i-1]
// 		if price < minPrice {
// 			minPrice = price
// 			continue
// 		}

// 		profit := price - minPrice
// 		if profit > maxProfit {
// 			maxProfit = profit
// 		}
// 	}

// 	return maxProfit
// }

// @lc code=end
