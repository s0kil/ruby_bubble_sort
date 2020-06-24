def bubble_sort(unsorted_list)
  sort = lambda { |list|
    sorted = true
    for index in 1..list.size - 1
      first = list[index - 1]
      second = list[index]
      next unless first > second

      sorted = false
      list[index - 1] = second
      list[index] = first
    end

    sorted
  }

  sort.call(unsorted_list) until sort.call(unsorted_list) == true

  unsorted_list
end

raise "Not Sorted" unless bubble_sort([4, 3, 78, 2, 0, 2]) == [0, 2, 2, 3, 4, 78]
