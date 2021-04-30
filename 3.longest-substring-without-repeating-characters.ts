/*
 * @lc app=leetcode id=3 lang=typescript
 *
 * [3] Longest Substring Without Repeating Characters
 */

// @lc code=start
function lengthOfLongestSubstring(s: string): number {
  let substrStart = 0;
  let maxLength = 0;
  let charToPos: Record<string, number> = {};

  for (let i = 0; i < s.length; i++) {
    const char = s.charAt(i);

    const prevPosition = charToPos[char];
    if (prevPosition !== undefined && prevPosition >= substrStart) {
      // 現在のsubstr内で重複が見つかれば、最初の文字から現在までが最も長い
      const currentLen = i - substrStart;
      if (currentLen > maxLength) maxLength = currentLen;
      substrStart = prevPosition + 1;
    }

    charToPos[char] = i;
  }

  if (s.length - substrStart > maxLength) {
    maxLength = s.length - substrStart;
  }

  return maxLength;
};
// @lc code=end

