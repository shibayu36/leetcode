#
# @lc app=leetcode id=973 lang=ruby
#
# [973] K Closest Points to Origin
#

# @lc code=start
class CustomizeHeap
  attr_reader :nodes

  def initialize(arr, &cmp)
    @cmp = cmp || proc do |nodes, p_i, c_i|
      # min heap
      nodes[p_i] <= nodes[c_i]
    end
    @nodes = []
    arr.each { |val| push(val) }
  end

  def size
    @nodes.size
  end

  def push(val)
    @nodes.push(val)

    current_index = size - 1
    parent_index = parent_of(size - 1)

    while current_index > 0 && !@cmp.call(@nodes, parent_index, current_index)
      swap(parent_index, current_index)
      current_index = parent_index
      parent_index = parent_of(current_index)
    end
  end

  def pop
    return @nodes.pop if size <= 1

    res = @nodes[0]

    @nodes[0] = @nodes.pop

    current_index = 0
    child_index = priority_child_of(current_index)

    while child_index && @cmp.call(@nodes, child_index, current_index)
      swap(child_index, current_index)
      current_index = child_index
      child_index = priority_child_of(current_index)
    end

    res
  end

  def top
    size == 0 ? nil : @nodes[0]
  end

  private

  def parent_of(index)
    (index - 1) / 2
  end

  def priority_child_of(index)
    left_child_index = (2 * index) + 1
    right_child_index = (2 * index) + 2

    left_val = nodes[left_child_index]
    right_val = nodes[right_child_index]

    if left_val && right_val
      @cmp.call(@nodes, left_child_index, right_child_index) ? left_child_index : right_child_index
    elsif left_val
      left_child_index
    end
  end

  def swap(i, j)
    @nodes[i], @nodes[j] = @nodes[j], @nodes[i]
  end
end

# @param {Integer[][]} points
# @param {Integer} k
# @return {Integer[][]}
def k_closest(points, k)
  heap = CustomizeHeap.new([]) do |nodes, p_i, c_i|
    nodes[p_i][:distance] <= nodes[c_i][:distance]
  end

  points.each do |point|
    heap.push(
      {
        distance: Math.sqrt((point[0]**2) + (point[1]**2)),
        point: point
      }
    )
  end

  res = []
  (0..k - 1).each do
    res.push(heap.pop)
  end

  res.map { |node| node[:point] }
end
# @lc code=end

p(k_closest([[1, 3], [-2, 2]], 1))
