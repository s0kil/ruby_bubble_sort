def bubble_sort(list)
  def sort(list)
    sorted = true
    for index in 1..list.size - 1
      first = list[index - 1]
      second = list[index]
      if first > second
        sorted = false
        list[index - 1] = second
        list[index] = first
      end
    end
    return sorted
  end

  until sort(list) == true
    sort(list)
  end

  return list
end

raise "Failed" unless bubble_sort([4, 3, 78, 2, 0, 2]) == [0, 2, 2, 3, 4, 78]
