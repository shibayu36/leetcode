/*
 * @lc app=leetcode id=20 lang=golang
 *
 * [20] Valid Parentheses
 */

package main

// @lc code=start
type Stack[T any] []T

func (s *Stack[T]) Push(v T) {
	*s = append(*s, v)
}

func (s *Stack[T]) Pop() T {
	v := (*s)[len(*s)-1]
	*s = (*s)[:len(*s)-1]
	return v
}

func (s *Stack[T]) IsEmpty() bool {
	return len(*s) == 0
}

var pairs = map[rune]rune{
	'(': ')',
	'[': ']',
	'{': '}',
}

func isValid(s string) bool {
	var stack Stack[rune]

	for _, c := range s {
		if pairs[c] != 0 {
			// open parentheses
			stack.Push(pairs[c])
		} else {
			if stack.IsEmpty() {
				return false
			}

			compare := stack.Pop()
			if c != compare {
				return false
			}
		}
	}

	return stack.IsEmpty()
}

// var pairs = map[string]string{
// 	"(": ")",
// 	"[": "]",
// 	"{": "}",
// }

// func isValid(s string) bool {
// 	var stack Stack[string]

// 	for i := 0; i < len(s); i++ {
// 		char := string(s[i])
// 		if pairs[char] != "" {
// 			// open parentheses
// 			stack.Push(pairs[char])
// 		} else {
// 			if stack.IsEmpty() {
// 				return false
// 			}

// 			compare := stack.Pop()
// 			if char != compare {
// 				return false
// 			}
// 		}
// 	}

// 	return stack.IsEmpty()
// }

// @lc code=end
