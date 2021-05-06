/*
 * @lc app=leetcode id=5 lang=typescript
 *
 * [5] Longest Palindromic Substring
 */

// @lc code=start
function longestPalindrome(s: string): string {
  const cache = Array.from(new Array(s.length), () => new Array(s.length).fill(undefined));

  for (let len = s.length; len > 0; len--) {
    for (let start = 0; start + len <= s.length; start++) {
      if (isPalindrome(s, start, start + len - 1, cache)) {
        return s.substring(start, start + len);
      }
    }
  }
  return "";
}

type PalindromeCache = (boolean | undefined)[][];
function isPalindrome(s: string, start: number, end: number, cache: PalindromeCache): boolean {
  // 0文字または1文字なら回文
  if (start >= end) return true;

  if (cache[start][end] !== undefined) {
    return cache[start][end] as boolean;
  }

  return (cache[start][end] = s.charAt(start) === s.charAt(end) && isPalindrome(s, start + 1, end - 1, cache));
}
// @lc code=end
