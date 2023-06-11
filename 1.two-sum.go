/*
 * @lc app=leetcode id=1 lang=golang
 *
 * [1] Two Sum
 */
package main

// @lc code=start
func twoSum(nums []int, target int) []int {
	visitedNumbers := make(map[int]int)

	for i := 0; i < len(nums); i++ {
		current := nums[i]
		pair := target - current

		if pairIndex, ok := visitedNumbers[pair]; ok {
			return []int{i, pairIndex}
		}

		visitedNumbers[current] = i
	}

	return nil
}

// func twoSum(nums []int, target int) []int {
// 	val2index := make(map[int]int, len(nums))
// 	for i, val := range nums {
// 		val2index[val] = i
// 	}

// 	for i, val := range nums {
// 		pair_i, ok := val2index[target-val]

// 		if ok && i != pair_i {
// 			return []int{i, pair_i}
// 		}
// 	}

// 	return nil
// }

// @lc code=end
