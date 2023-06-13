/*
 * @lc app=leetcode id=242 lang=golang
 *
 * [242] Valid Anagram
 */
package main

// @lc code=start
func isAnagram(s string, t string) bool {
	if len(s) != len(t) {
		return false
	}

	exists := make(map[byte]int)

	for i := 0; i < len(s); i++ {
		exists[s[i]]++
		exists[t[i]]--
	}

	for _, val := range exists {
		if val != 0 {
			return false
		}
	}

	return true
}

// @lc code=end
