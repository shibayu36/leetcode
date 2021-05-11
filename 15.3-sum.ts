/*
 * @lc app=leetcode id=15 lang=typescript
 *
 * [15] 3Sum
 */

// @lc code=start
function threeSum(nums: number[]): number[][] {
  const numToCount = new Map<number, number>();
  for (let i = 0; i < nums.length; i++) {
    numToCount.set(nums[i], (numToCount.get(nums[i]) ?? 0) + 1);
  }

  const answers: number[][] = [];
  const zeroCount = numToCount.get(0);
  if (zeroCount !== undefined && zeroCount >= 3) {
    answers.push([0, 0, 0]);
  }

  const candidateNums = [...numToCount.keys()];
  const positives = candidateNums.filter((n) => n > 0);
  const negatives = candidateNums.filter((n) => n < 0);

  for (let i = 0; i < positives.length; i++) {
    for (let j = 0; j < negatives.length; j++) {
      const num1 = positives[i];
      const num2 = negatives[j];
      const rest = -(num1 + num2);
      if (numToCount.get(rest) === undefined) continue;
      if ((num1 === rest && (numToCount.get(num1) ?? 0) < 2) || (num2 === rest && (numToCount.get(num2) ?? 0) < 2)) {
        continue;
      }
      answers.push([num1, num2, rest].sort((a, b) => a - b));
    }
  }

  return answers;
}
// @lc code=end
