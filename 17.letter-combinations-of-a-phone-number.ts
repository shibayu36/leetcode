/*
 * @lc app=leetcode id=17 lang=typescript
 *
 * [17] Letter Combinations of a Phone Number
 */

// @lc code=start
const digitToNumbers: { [key: string]: string[] } = {
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
  return _letterCombinations(digits, 0);
}

function _letterCombinations(digits: string, index: number): string[] {
  if (digits.length === 0) return [];

  if (index + 1 === digits.length) {
    return digitToNumbers[digits.charAt(index)];
  }

  const result: string[] = [];
  const restCombinations = _letterCombinations(digits, index + 1);
  for (const letter of digitToNumbers[digits.charAt(index)]) {
    for (const combination of restCombinations) {
      result.push(letter + combination);
    }
  }
  return result;
}
// @lc code=end
