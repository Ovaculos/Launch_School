def bubble_sort!(array)

  loop do 
    swapped = false
    pointer = -1

    until pointer == array.size
      pointer += 1

      if (array[pointer] <=> array[pointer + 1]) == 1
        array[pointer], array[pointer + 1] = array[pointer + 1], array[pointer]
        swapped = true
      else
        next
      end
    end
    
    break unless swapped
  end

  array
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

# Comparing 2 values at a time
# Moves up in index after each comparison
# Is done when the whole array is iterated through without any swaps

# swapped? boolean set to false at the beginning of each iteration
# iterations variable set to int 0
# start loop