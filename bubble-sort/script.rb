def bubble_sort(array)
  i = array.length - 1

  while i > 0 do
    curr_index = 0
    k = array.length - 1

    while k > 0 do
      next_index = curr_index + 1
      curr_value = array[curr_index]
      next_value = array[next_index]

      if curr_value > next_value
        array[next_index] = curr_value
        array[curr_index] = next_value
      end
      curr_index += 1
      k -= 1
    end
    i -= 1
  end
  array
end

array = [4, 3, 78, 2, 0, 2]

p bubble_sort(array)
