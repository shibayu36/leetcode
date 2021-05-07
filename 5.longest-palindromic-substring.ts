/*
 * @lc app=leetcode id=5 lang=typescript
 *
 * [5] Longest Palindromic Substring
 */

// @lc code=start
function longestPalindrome(s: string): string {
  // 文字列sのi~jが回文かどうか dp[i][j]
  // - dp[n][n] なら true
  // - dp[n][n+1]なら、s[i] === s[i + 1]
  // - dp[i][j] = dp[i+1][j-1] && s[i] === s[j]
  const dp: (boolean | undefined)[][] = Array.from(new Array(s.length), () => new Array(s.length));

  for (let i = 0; i < s.length; i++) {
    dp[i][i] = true;
  }

  let longest = s.charAt(0);
  for (let len = 2; len <= s.length; len++) {
    for (let start = 0; start + len <= s.length; start++) {
      const end = start + len - 1;
      if (start + 1 === end) {
        dp[start][end] = s.charAt(start) === s.charAt(end);
      } else {
        dp[start][end] = dp[start + 1][end - 1] && s.charAt(start) === s.charAt(end);
      }

      if (dp[start][end]) {
        longest = s.substring(start, end + 1);
      }
    }
  }

  return longest;
}
// @lc code=end

// ===== memo化しようとしてみたパターン =====
// function longestPalindrome(s: string): string {
//   const cache = Array.from(new Array(s.length), () => new Array(s.length).fill(undefined));

//   for (let len = s.length; len > 0; len--) {
//     for (let start = 0; start + len <= s.length; start++) {
//       if (isPalindrome(s, start, start + len - 1, cache)) {
//         return s.substring(start, start + len);
//       }
//     }
//   }
//   return "";
// }

// type PalindromeCache = (boolean | undefined)[][];
// function isPalindrome(s: string, start: number, end: number, cache: PalindromeCache): boolean {
//   // 0文字または1文字なら回文
//   if (start >= end) return true;

//   if (cache[start][end] !== undefined) {
//     return cache[start][end] as boolean;
//   }

//   return (cache[start][end] = isPalindrome(s, start + 1, end - 1, cache) && s.charAt(start) === s.charAt(end));
// }
