/*
 * @lc app=leetcode id=11 lang=typescript
 *
 * [11] Container With Most Water
 */

// @lc code=start
function maxArea(height: number[]): number {
  // console.log("start");
  const leftCandidates: number[] = [];
  const rightCandidates: number[] = [];

  {
    let currentHeight = 0;
    for (let i = 0; i < height.length; i++) {
      if (height[i] > currentHeight) {
        leftCandidates.push(i);
        currentHeight = height[i];
      }
    }
  }

  {
    let currentHeight = 0;
    for (let j = height.length - 1; j >= 0; j--) {
      if (height[j] > currentHeight) {
        rightCandidates.push(j);
        currentHeight = height[j];
      }
    }
  }

  let maxWater = 0;
  for (const left of leftCandidates) {
    for (const right of rightCandidates) {
      if (left >= right) continue;
      const water = (right - left) * Math.min(height[right], height[left]);
      // console.log({ left, right, water });
      if (water > maxWater) maxWater = water;
    }
  }

  // for (let i = 0; i < height.length - 1; i++) {
  //   for (let j = i + 1; j < height.length; j++) {
  //     const water = (j - i) * Math.min(height[i], height[j]);
  //     if (water > maxWater) maxWater = water;
  //   }
  // }
  return maxWater;
}
// @lc code=end
