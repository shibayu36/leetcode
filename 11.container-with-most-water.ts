/*
 * @lc app=leetcode id=11 lang=typescript
 *
 * [11] Container With Most Water
 */

// @lc code=start
function maxArea(height: number[]): number {
  let maxWater = 0;
  let left = 0;
  let right = height.length - 1;

  while (left < right) {
    const water = (right - left) * Math.min(height[right], height[left]);
    if (water > maxWater) maxWater = water;

    // 左辺・右辺の高さが低い方に面積は制限される。幅が狭くなっても
    // 面積が広くなるのは高さが高くなる時だけなので、そのような辺を探す。
    if (height[left] <= height[right]) {
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
  }

  return maxWater;
}
// @lc code=end
