def bubble_sort!(array)

  loop do 
    pointer = -1
    swapped = false

    until pointer == array.length do 
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
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)