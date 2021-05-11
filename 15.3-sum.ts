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

  // 足して0になるということは必ずpositiveとnegativeが一つずつ含まれているので
  // その二つを使ってループする。ただし0が三つのケースを漏らしてしまうので
  // 例外的に処理をする
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
      // 条件を満たすrestが存在するかチェック
      if (numToCount.get(rest) === undefined) continue;
      // restがあったとしても、num1もしくはnum2と同じ値だった場合
      // 要素数が足りているかチェックする
      if ((num1 === rest && (numToCount.get(num1) ?? 0) < 2) || (num2 === rest && (numToCount.get(num2) ?? 0) < 2)) {
        continue;
      }
      answers.push([num1, num2, rest]);
    }
  }

  return uniqBy(answers, (a) => a.sort((a, b) => a - b).join("-"));
}

function uniqBy<T>(array: T[], func: (item: T) => unknown) {
  const map = new Map<unknown, boolean>();
  return array.filter((i) => {
    const key = func(i);
    if (map.has(key)) {
      return false;
    } else {
      map.set(key, true);
      return true;
    }
  });
}
// @lc code=end
