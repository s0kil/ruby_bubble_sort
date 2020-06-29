def bubble_sort()
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
  sort.call() until sort.call() == true

  # Return the sorted list
  puts list_to_sort
end




def bubble_sort_by(array)
  
  iterations = array.length - 1

  iterations.times do 
   array.each_with_index do |v, i|
    array[i], array[i + 1] = array[i +1], array[i] if yield(array[i].to_s, array[i+1].to_s) < 0 

   end
  end
 puts array.reverse!
end


bubble_sort_by(["hi","hello","hey"]) do |left,right|
  left.length - right.length
end