/*
 * @lc app=leetcode id=125 lang=golang
 *
 * [125] Valid Palindrome
 */
package main

import (
	"regexp"
	"strings"
)

// @lc code=start
func isPalindrome(s string) bool {
	re := regexp.MustCompile(`[^a-zA-Z0-9]+`)
	str := strings.ToLower(s)
	str = re.ReplaceAllString(str, "")

	chars := []rune(str)
	length := len(chars)

	for i := 0; i < length/2; i++ {
		left := chars[i]
		right := chars[length-i-1]
		if left != right {
			return false
		}
	}

	return true
}

// @lc code=end
