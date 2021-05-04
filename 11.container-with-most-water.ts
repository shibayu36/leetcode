/*
 * @lc app=leetcode id=11 lang=typescript
 *
 * [11] Container With Most Water
 */

// @lc code=start
function maxArea(height: number[]): number {
  console.log("start");
  let maxWater = 0;
  let left = 0;
  let right = height.length - 1;
  let leftTurn = true;
  while (left < right) {
    const water = (right - left) * Math.min(height[right], height[left]);
    console.log({ left, right, water });
    if (water > maxWater) maxWater = water;

    if (leftTurn) {
      const currentLeftHeight = height[left];
      left++;
      while (height[left] < currentLeftHeight && left < height.length) {
        left++;
      }
    } else {
      const currentRightHeight = height[right];
      right--;
      while (height[right] < currentRightHeight && right > 0) {
        right--;
      }
    }

    leftTurn = !leftTurn;
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
