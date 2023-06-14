/*
 * @lc app=leetcode id=704 lang=golang
 *
 * [704] Binary Search
 */
package main

// @lc code=start
func search(nums []int, target int) int {
	left, right := 0, len(nums)-1

	for {
		if left > right {
			return -1
		}

		middle := (right + left) / 2

		if nums[middle] == target {
			return middle
		}

		if nums[middle] < target {
			left = middle + 1
		} else if nums[middle] > target {
			right = middle - 1
		}
	}
}

// @lc code=end
