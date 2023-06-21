/*
 * @lc app=leetcode id=733 lang=golang
 *
 * [733] Flood Fill
 */

package main

// @lc code=start
type Queue[T any] []T

func (q *Queue[T]) Enqueue(v T) {
	*q = append(*q, v)
}

func (q *Queue[T]) Dequeue() T {
	v := (*q)[0]
	*q = (*q)[1:]
	return v
}

func (q *Queue[T]) IsEmpty() bool {
	return len(*q) == 0
}

type vector struct {
	dr int
	dc int
}

var vectors = [4]vector{
	{0, 1},
	{0, -1},
	{1, 0},
	{-1, 0},
}

func floodFill(image [][]int, sr int, sc int, color int) [][]int {
	origColor := image[sr][sc]

	visited := make([][]bool, len(image))
	for i := range image {
		visited[i] = make([]bool, len(image[i]))
	}

	type point struct {
		r int
		c int
	}
	var queue Queue[point]

	queue.Enqueue(point{sr, sc})

	for !queue.IsEmpty() {
		p := queue.Dequeue()

		if visited[p.r][p.c] {
			continue
		}
		if image[p.r][p.c] != origColor {
			continue
		}

		image[p.r][p.c] = color
		visited[p.r][p.c] = true

		for _, vec := range vectors {
			nextR := p.r + vec.dr
			nextC := p.c + vec.dc

			if 0 <= nextR && nextR < len(image) && 0 <= nextC && nextC < len(image[0]) {
				queue.Enqueue(point{nextR, nextC})
			}
		}
	}

	return image

}

// @lc code=end
