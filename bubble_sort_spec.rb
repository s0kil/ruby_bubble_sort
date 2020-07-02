require "./bubble_sort"

# Test `bubble_sort`
raise "Test 0-1 Failed" unless bubble_sort([9, 8, 7]) == [7, 8, 9]
raise "Test 0-2 Failed" unless bubble_sort([4, 3, 78, 2, 0, 2]) == [0, 2, 2, 3, 4, 78]
raise "Test 0-3 Failed" unless bubble_sort([0, 9, 1, 7683, -2]) == [-2, 0, 1, 9, 7683]

# Test `bubble_sort_by`
raise "Test 1-0 Failed" unless bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end == %w[hi hey hello]
