/*
 * @lc app=leetcode id=17 lang=typescript
 *
 * [17] Letter Combinations of a Phone Number
 */

// @lc code=start
const digitToChars: { [key: string]: string[] } = {
  "2": ["a", "b", "c"],
  "3": ["d", "e", "f"],
  "4": ["g", "h", "i"],
  "5": ["j", "k", "l"],
  "6": ["m", "n", "o"],
  "7": ["p", "q", "r", "s"],
  "8": ["t", "u", "v"],
  "9": ["w", "x", "y", "z"],
};

function letterCombinations(digits: string): string[] {
  if (digits.length === 0) return [];

  let result: string[] = digitToChars[digits.charAt(0)];
  for (let i = 1; i < digits.length; i++) {
    const chars = digitToChars[digits.charAt(i)];
    const newResult: string[] = [];
    for (const r of result) {
      for (const char of chars) {
        newResult.push(r + char);
      }
    }
    result = newResult;
  }

  return result;
}
// @lc code=end
