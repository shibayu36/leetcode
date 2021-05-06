/*
 * @lc app=leetcode id=5 lang=typescript
 *
 * [5] Longest Palindromic Substring
 */

// @lc code=start
function longestPalindrome(s: string): string {}

function isPalindrome(s: string, start: number, end: number): boolean {
  // 0文字または1文字なら回文
  if (start >= end) return true;

  return s.charAt(start) === s.charAt(end) && isPalindrome(s, start + 1, end - 1);
}
// @lc code=end
