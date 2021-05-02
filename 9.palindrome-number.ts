/*
 * @lc app=leetcode id=9 lang=typescript
 *
 * [9] Palindrome Number
 */

// @lc code=start
function isPalindrome(x: number): boolean {
  if (x < 0) return false;
  let target = 0;
  for (let current = x; current > 0; current = Math.floor(current / 10)) {
    target = target * 10 + (current % 10);
  }
  return x === target;
}
// @lc code=end
