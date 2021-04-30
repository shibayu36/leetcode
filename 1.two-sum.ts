/*
 * @lc app=leetcode id=1 lang=typescript
 *
 * [1] Two Sum
 */

// @lc code=start
function twoSum(nums: number[], target: number): number[] {
  const valToIndex = new Map<number, number>();

  for (let i = 0; i < nums.length; i++) {
    const pairVal = target - nums[i];
    const pairIndex = valToIndex.get(pairVal);
    if (pairIndex !== undefined) return [pairIndex, i];

    valToIndex.set(nums[i], i);
  }

  // for (let i = 0; i < nums.length - 1; i++) {
  //   for (let j = i + 1; j < nums.length; j++) {
  //     if (nums[i] + nums[j] === target) return [i, j]
  //   }
  // }
};
// @lc code=end
