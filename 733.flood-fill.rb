#
# @lc app=leetcode id=733 lang=ruby
#
# [733] Flood Fill
#

# @lc code=start
# @param {Integer[][]} image
# @param {Integer} sr
# @param {Integer} sc
# @param {Integer} color
# @return {Integer[][]}
VECTORS = [[0, 1], [0, -1], [1, 0], [-1, 0]]

def flood_fill(image, sr, sc, color)
  from_color = image[sr][sc]
  already_filled = Array.new(image.size) { Array.new(image[0].size, nil) }
  queue = []

  image[sr][sc] = color
  already_filled[sr][sc] = true
  queue.push([sr, sc])

  while queue.size > 0
    sr_and_sc = queue.pop
    current_sr, current_sc = sr_and_sc

    VECTORS.each do |vector|
      next_sr = current_sr + vector[0]
      next_sc = current_sc + vector[1]

      next unless 0 <= next_sr && next_sr < image.size
      next unless 0 <= next_sc && next_sc < image[0].size
      next unless image[next_sr][next_sc] == from_color
      next if already_filled[next_sr][next_sc]

      image[next_sr][next_sc] = color
      already_filled[next_sr][next_sc] = true
      queue.push([next_sr, next_sc])
    end
  end

  image
end
# @lc code=end

# p(flood_fill([[1, 1, 1], [1, 1, 0], [1, 0, 1]], 1, 1, 2))
# p(flood_fill([[0, 0, 0], [0, 0, 0]], 0, 0, 0))
p(flood_fill([[1, 1, 1], [1, 1, 0], [1, 0, 1]], 1, 1, 2))
