#
# @lc app=leetcode id=57 lang=ruby
#
# [57] Insert Interval
#

# @lc code=start
# @param {Integer[][]} intervals
# @param {Integer[]} new_interval
# @return {Integer[][]}
def insert(intervals, new_interval)
  result = []
  i = 0

  # push left
  while i < intervals.size && intervals[i][1] < new_interval[0]
    result.push(intervals[i])
    i += 1
  end

  # push middle
  while i < intervals.size && intervals[i][0] <= new_interval[1]
    new_interval = [
      [intervals[i][0], new_interval[0]].min,
      [intervals[i][1], new_interval[1]].max
    ]
    i += 1
  end
  result.push(new_interval)

  # push right
  while i < intervals.length
    result.push(intervals[i])
    i += 1
  end

  result
end
# @lc code=end

insert([[1, 3], [6, 9]], [2, 5])
