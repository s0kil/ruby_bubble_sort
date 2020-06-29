def bubble_sort(list_to_sort)
  sort = lambda { |list|
    # By default, the list is sorted
    sorted = true

    # We start looping the list from the first item `list[1]`
    # Ex: `9, [8], 7` we start at 8 in this case
    for index in 1..list.size - 1 # `list.size - 1` we skip the last item in order to make the code less complicated
      # Ex: `9, [8], 7`
      current_item = list[index]
      # Ex: `[9], 8, 7`
      previous_item = list[index - 1]

      # Go to next loop iteration, unless the previous item is greater than current item
      next unless previous_item > current_item

      # List is not sorted, we have work to do.
      sorted = false

      # Swap positions
      # Ex: `9, 8` turns into `8, 9`
      list[index - 1] = current_item
      list[index] = previous_item
    end

    sorted
  }

  # Evaluate the `sort` function in an loop, until it returns true (as in sorted)
  sort.call(list_to_sort) until sort.call(list_to_sort) == true

  # Return the sorted list
  list_to_sort
end

# Test `bubble_sort`
raise "Test 0-1 Failed" unless bubble_sort([9, 8, 7]) == [7, 8, 9]
raise "Test 0-2 Failed" unless bubble_sort([4, 3, 78, 2, 0, 2]) == [0, 2, 2, 3, 4, 78]
raise "Test 0-3 Failed" unless bubble_sort([0, 9, 1, 7683, -2]) == [-2, 0, 1, 9, 7683]

def bubble_sort_by(array)
  iterations = array.length - 1

  iterations.times do
    array.each_with_index do |_v, i|
      array[i], array[i + 1] = array[i + 1], array[i] if yield(array[i].to_s, array[i + 1].to_s).negative?
    end
  end

  array.reverse!
end

# Test `bubble_sort_by`
raise "Test 1-0 Failed" unless bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end == %w[hi hey hello]
