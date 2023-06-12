/*
 * @lc app=leetcode id=125 lang=golang
 *
 * [125] Valid Palindrome
 */
package main

import (
	"strings"
	"unicode"
)

// @lc code=start
func isPalindrome(s string) bool {
	convert := func(r rune) rune {
		if unicode.IsLetter(r) || unicode.IsNumber(r) {
			return unicode.ToLower(r)
		}

		return -1
	}
	str := strings.Map(convert, s)

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

// func isPalindrome(s string) bool {
// 	re := regexp.MustCompile(`[^a-zA-Z0-9]+`)
// 	str := strings.ToLower(s)
// 	str = re.ReplaceAllString(str, "")

// 	chars := []rune(str)
// 	length := len(chars)

// 	for i := 0; i < length/2; i++ {
// 		left := chars[i]
// 		right := chars[length-i-1]
// 		if left != right {
// 			return false
// 		}
// 	}

// 	return true
// }

// @lc code=end
