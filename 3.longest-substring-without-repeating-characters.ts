/*
 * @lc app=leetcode id=3 lang=typescript
 *
 * [3] Longest Substring Without Repeating Characters
 */

// @lc code=start
function lengthOfLongestSubstring(s: string): number {
  /**
   * {
   *   "a": [0, 3],
   *   "b": [1, 4, 6, 7],
   *   "c": [2, 5],
   * }
   */
  const charToIndices: { [key: string]: number[] } = {};

  for (let i = 0; i < s.length; i++) {
    const char = s.charAt(i);
    charToIndices[char] ??= [];
    charToIndices[char].push(i);
  }

  console.log(charToIndices);

  let maxLength = 0;
  for (const char of Object.keys(charToIndices)) {
    const indices = charToIndices[char];
    indices.push(s.length);
    for (let i = 0; i < indices.length - 1; i++) {
      const len = indices[i + 1] - indices[i];
      if (len > maxLength) {
        maxLength = len;
      }
    }
  }

  return maxLength;
};
// @lc code=end

