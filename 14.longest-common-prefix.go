/*
 * @lc app=leetcode id=14 lang=golang
 *
 * [14] Longest Common Prefix
 */

package main

import "fmt"

// @lc code=start
func longestCommonPrefix(strs []string) string {
	var prefix string

	for i := 0; i < len(strs[0]); i++ {
		cToCompare := strs[0][i]
		for j := 1; j < len(strs); j++ {
			targetStr := strs[j]
			if i > len(targetStr)-1 {
				return prefix
			}
			if targetStr[i] != cToCompare {
				return prefix
			}
		}

		prefix += string(cToCompare)
	}

	return prefix
}

// @lc code=end

func main() {
	fmt.Println(longestCommonPrefix([]string{"ab", "a"}))
}
